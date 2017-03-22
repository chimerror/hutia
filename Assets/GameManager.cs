using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using UnityEngine.Events;

public class GameManager : MonoBehaviour
{
    public static GameManager Instance { get; private set; }

    public GameState GameState
    {
        get
        {
            return _gameState;
        }
    }

    public string StoryState
    {
        get
        {
            return _story.state.ToJson();
        }

        set
        {
            _story.state.LoadJson(value);
        }
    }

    public EngineState EngineState
    {
        get
        {
            var newState = new EngineState();
            newState.GameTime = _gameTime;
            newState.GameLocation = _gameLocation;
            newState.BackgroundParameters = _backgroundParameters;
            newState.FarLeftCharacterParameters = _farLeftCharacterParameters;
            newState.LeftCharacterParameters = _leftCharacterParameters;
            newState.CenterCharacterParameters = _centerCharacterParameters;
            newState.RightCharacterParameters = _rightCharacterParameters;
            newState.FarRightCharacterParameters = _farRightCharacterParameters;
            newState.CharacterColors = _characterColors.ToDictionary(kvp => kvp.Key, kvp => "#" + ColorUtility.ToHtmlStringRGBA(kvp.Value));
            newState.CharacterAliases = new Dictionary<string, string>(_characterAliases);

            return newState;
        }

        set
        {
            _characterAliases = new Dictionary<string, string>(value.CharacterAliases);
            _characterColors = value.CharacterColors.ToDictionary(kvp => kvp.Key, kvp =>
                {
                    Color color = defaultCharacterColor;
                    Debug.AssertFormat(ColorUtility.TryParseHtmlString(kvp.Value, out color), "Unable to parse color from saved file {0}", kvp.Value);
                    return color;
                });
            HandleCharacter("OFF");
            if (!string.IsNullOrEmpty(value.FarLeftCharacterParameters))
            {
                HandleCharacter(string.Format("FAR_LEFT {0}", value.FarLeftCharacterParameters));
            }
            if (!string.IsNullOrEmpty(value.LeftCharacterParameters))
            {
                HandleCharacter(string.Format("LEFT {0}", value.LeftCharacterParameters));
            }
            if (!string.IsNullOrEmpty(value.CenterCharacterParameters))
            {
            HandleCharacter(string.Format("CENTER {0}", value.CenterCharacterParameters));
            }
            if (!string.IsNullOrEmpty(value.RightCharacterParameters))
            {
            HandleCharacter(string.Format("RIGHT {0}", value.RightCharacterParameters));
            }
            if (!string.IsNullOrEmpty(value.FarRightCharacterParameters))
            {
                HandleCharacter(string.Format("FAR_RIGHT {0}", value.FarRightCharacterParameters));
            }
            UpdateBackground(value.BackgroundParameters);
            _gameLocation = value.GameLocation;
            _gameTime = value.GameTime;
        }
    }

    public string GameTime
    {
        get
        {
            return _gameTime;
        }
    }

    public string GameLocation
    {
        get
        {
            return _gameLocation;
        }
    }

    /// <summary>
    /// Regular expression for catching directives
    /// </summary>
    /// <remarks>
    /// The start of the string, followed by either:
    /// <list type="bullet">
    /// <item><description>BG</description></item>
    /// <item><description>TITLE</description></item>
    /// <item><description>MUSIC</description></item>
    /// <item><description>IMAGE</description></item>
    /// <item><description>CHARACTER</description></item>
    /// </list>
    /// grouped as 'directive', followed by one or more whitespace characters, followed by
    /// one or more other characters, grouped as 'parameters' followed by the end of
    /// the string.
    /// </remarks>
    private readonly static Regex DirectiveRegex = new Regex(@"^(?<directive>BG|TITLE|SOUND|MUSIC|IMAGE|CHARACTER|CHAR_COLOR|ALIAS|TIME|LOCATION)\s+(?<parameters>.+)$");

    private readonly static Regex BackgroundParameters = new Regex(@"^(?<type>IMAGE|COLOR)\s(?<value>.+)$");

    private readonly static Regex TitleParameters = new Regex(@"^(COLOR\s+(?<color>#?\w+)\s+)?(?<title>.*)$");

    private readonly static Regex MusicParameters = new Regex(@"^(?<name>[\w-]+)(\s+(?<loopSettings>LOOP|ONCE))?$");

    private readonly static Regex SoundParameters = new Regex(@"^(?<name>[\w-]+)(\s+(?<loopSettings>LOOP|ONCE))?$");

    private readonly static Regex ImageParameters = new Regex(@"^(?<name>[\w-]+)(\s+(?<delay>.+))?$");

    private readonly static Regex CharacterParameters = new Regex(@"^(?<position>FAR_LEFT|LEFT|CENTER|RIGHT|FAR_RIGHT|OFF)(\s+(?<name>.+?))?(\s+MOOD (?<mood>[\w-]+))?$");

    private readonly static Regex CharColorParameters = new Regex(@"^(?<color>#?\w+)\s+(?<name>.+)$");

    private readonly static Regex AliasParameters = new Regex(@"^(?<forget>FORGET\s+)?(?<alias>.+?)(\s+AS\s+(?<base>\w+))?$");

    /// <summary>
    /// Regular expression for catching dialogue.
    /// </summary>
    /// <remarks>
    /// The start of the string, followed by one or more word characters grouped as 'speaker', followed by a colon,
    /// followed by any number of characters grouped as 'dialogue', followed by the end of the string.
    /// </remarks>
    private readonly static Regex DialogueRegex = new Regex(@"^(?<speaker>.+?):\s+(?<dialogue>.*)$");

    public Color defaultBackgroundColor;
    public Color defaultCharacterColor;
    public Image background;
    public TextAsset storyAsset;
    public DialogueBox dialogueBox;
    public ChoiceBox choiceBox;
    public TitleBox titleBox;
    public Image imageBox;
    public float defaultImageDelay = 0.500f;
    public Image farLeftCharacter;
    public Image leftCharacter;
    public Image centerCharacter;
    public Image rightCharacter;
    public Image farRightCharacter;
    public AudioSource soundSource;
    public AudioSource musicSource;
    public GameObject saveGameDialog;
    public GameObject loadGameDialog;
    public GameObject optionsDialog;
    public int latoyaLewd;
    public int latoyaObject;
    public int claraLewd;
    public int claraObject;
    public int ramseyLewd;
    public int ramseyObject;
    public int f0c5Lewd;
    public int f0c5Object;

    private GameState _gameState = GameState.TitleScreen;
    private string _backgroundParameters;
    private string _farLeftCharacterParameters;
    private string _leftCharacterParameters;
    private string _centerCharacterParameters;
    private string _rightCharacterParameters;
    private string _farRightCharacterParameters;
    private AssetBundle _backgrounds;
    private AssetBundle _sounds;
    private AssetBundle _music;
    private AssetBundle _images;
    private AssetBundle _characters;
    private AssetBundle _voices;
    private Story _story;
    private string _gameTime;
    private string _gameLocation;
    private bool _imageDelayOver = false;
    private Dictionary<string, Color> _characterColors = new Dictionary<string, Color>();
    private Dictionary<string, Image> _characterPositions = new Dictionary<string, Image>();
    private Dictionary<string, string> _characterAliases = new Dictionary<string, string>();

    public Dictionary<string, Color> CharacterColors
    {
        get
        {
            return _characterColors;
        }
    }

    public Dictionary<string, string> CharacterAliases
    {
        get
        {
            return _characterAliases;
        }
    }

    public void ContinueStory(int choice = -1, bool advanceIfAble = true)
    {
        saveGameDialog.SetActive(false);
        loadGameDialog.SetActive(false);

        if (choice > -1)
        {
            _story.ChooseChoiceIndex(choice);
        }

        string rawInput = null;
        if (advanceIfAble)
        {
            rawInput = _story.canContinue ? _story.Continue() : null;
        }
        else
        {
            rawInput = _story.currentText;
        }

        while (rawInput != null && DirectiveRegex.IsMatch(rawInput))
        {
            var waitForInput = PerformDirective(rawInput);
            if (waitForInput)
            {
                _gameState = GameState.Gameplay;
                return;
            }

            rawInput = _story.canContinue ? _story.Continue() : null;
        }

        if (rawInput != null)
        {
            UpdateDialogue(rawInput, _story.currentTags);
        }
        else if (_story.currentChoices.Count > 0)
        {
            choiceBox.gameObject.SetActive(true);
            dialogueBox.gameObject.SetActive(false);
            titleBox.gameObject.SetActive(false);

            choiceBox.SetChoices(_story.currentChoices);
        }
        else
        {
            // TODO: Game Over, YEAH!!!!!
            Debug.Log("Ran out of story!");
        }
        _gameState = GameState.Gameplay;
    }

    private bool PerformDirective(string rawInput)
    {
        var regexMatch = DirectiveRegex.Match(rawInput);
        Debug.AssertFormat(regexMatch.Success, "Unknown directive sent to PerformDirective: {0}", rawInput);

        var parameters = regexMatch.Groups["parameters"].Value;
        switch (regexMatch.Groups["directive"].Value)
        {
            case "BG":
                return UpdateBackground(parameters);

            case "TITLE":
                return ShowTitle(parameters);

            case "SOUND":
                return PlaySound(parameters);

            case "MUSIC":
                return PlayMusic(parameters);

            case "IMAGE":
                return ShowImage(parameters);

            case "CHARACTER":
                return HandleCharacter(parameters);

            case "CHAR_COLOR":
                return SetCharacterColor(parameters);

            case "ALIAS":
                return HandleAlias(parameters);

            case "TIME":
                return HandleTime(parameters);

            case "LOCATION":
                return HandleLocation(parameters);

            default:
                Debug.LogErrorFormat("Unknown directive: {0}", rawInput);
                return false;
        }
    }

    private bool UpdateBackground(string parameters)
    {
        var regexMatch = BackgroundParameters.Match(parameters);
        Debug.AssertFormat(regexMatch.Success, "Unknown BG parameters: {0}", parameters);

        var value = regexMatch.Groups["value"].Value;
        switch (regexMatch.Groups["type"].Value)
        {
            case "IMAGE":
                var path = string.Format("assets/backgrounds/{0}.png", value);
                var bg = _backgrounds.LoadAsset<Sprite>(path);
                Debug.AssertFormat(bg != null, "Unable to load background: {0}", path);
                background.sprite = bg;
                background.color = Color.white;
                break;

            case "COLOR":
                Color color;
                if (!ColorUtility.TryParseHtmlString(value, out color))
                {
                    Debug.LogWarningFormat("Unable to parse color: {0}", value);
                    color = defaultBackgroundColor;
                }
                background.sprite = null;
                background.color = color;
                break;

            default:
                Debug.LogErrorFormat("Unknown background type: {0}", value);
                break;
        }

        _backgroundParameters = parameters;
        return false; // Don't wait for input
    }

    private bool ShowTitle(string parameters)
    {
        dialogueBox.gameObject.SetActive(false);
        choiceBox.gameObject.SetActive(false);
        titleBox.gameObject.SetActive(true);

        var regexMatch = TitleParameters.Match(parameters);
        Debug.AssertFormat(regexMatch.Success, "Unknown TITLE parameters: {0}", parameters);

        var title = regexMatch.Groups["title"].Value;
        Color color;
        if (regexMatch.Groups["color"].Success &&
            ColorUtility.TryParseHtmlString(regexMatch.Groups["color"].Value, out color))
        {
            titleBox.SetText(title, color);
        }
        else
        {
            titleBox.SetText(title);
        }

        return true; // Wait for input
    }

    private bool PlaySound(string parameters)
    {
        var regexMatch = SoundParameters.Match(parameters);
        Debug.AssertFormat(regexMatch.Success, "Unknown SOUND parameters: {0}", parameters);

        var name = regexMatch.Groups["name"].Value;
        if (name.Equals("OFF"))
        {
            soundSource.Stop();
            soundSource.clip = null;
            return false; // Don't wait for input
        }

        var path = string.Format("assets/sounds/{0}.ogg", name);
        var clip = _sounds.LoadAsset<AudioClip>(path);
        Debug.AssertFormat(clip != null, "Unable to load sound clip: {0}", path);
        soundSource.clip = clip;
        soundSource.loop = regexMatch.Groups["loopSettings"].Success && regexMatch.Groups["loopSettings"].Value.Equals("LOOP");
        soundSource.Play();

        return false; // Don't wait for input
    }

    private bool PlayMusic(string parameters)
    {
        var regexMatch = MusicParameters.Match(parameters);
        Debug.AssertFormat(regexMatch.Success, "Unknown MUSIC parameters: {0}", parameters);

        var name = regexMatch.Groups["name"].Value;
        if (name.Equals("OFF"))
        {
            musicSource.Stop();
            musicSource.clip = null;
            return false; // Don't wait for input
        }

        var path = string.Format("assets/music/{0}.ogg", name);
        var clip = _music.LoadAsset<AudioClip>(path);
        Debug.AssertFormat(clip != null, "Unable to load music clip: {0}", path);
        musicSource.clip = clip;
        musicSource.loop = !(regexMatch.Groups["loopSettings"].Success && regexMatch.Groups["loopSettings"].Value.Equals("ONCE"));
        musicSource.Play();

        return false; // Don't wait for input
    }

    private bool ShowImage(string parameters)
    {
        dialogueBox.gameObject.SetActive(false);
        choiceBox.gameObject.SetActive(false);
        titleBox.gameObject.SetActive(false);

        var regexMatch = ImageParameters.Match(parameters);
        Debug.AssertFormat(regexMatch.Success, "Unknown IMAGE parameters: {0}", parameters);

        var name = regexMatch.Groups["name"].Value;
        var imagePath = string.Format("assets/images/{0}.png", name);
        var imageSprite = _images.LoadAsset<Sprite>(imagePath);
        Debug.AssertFormat(imageSprite != null, "Unable to load image sprite: {0}", imagePath);
        imageBox.sprite = imageSprite;

        var controllerPath = string.Format("assets/images/{0}.controller", name);
        var controller = _images.LoadAsset<RuntimeAnimatorController>(controllerPath);
        var animator = imageBox.GetComponent<Animator>();
        if (controller != null)
        {
            animator.runtimeAnimatorController = controller;
            animator.enabled = true;
        }
        else
        {
            animator.runtimeAnimatorController = null;
            animator.enabled = false;
        }

        var delay = defaultImageDelay;
        if (regexMatch.Groups["delay"].Success)
        {
            var delayString = regexMatch.Groups["delay"].Value;
            Debug.AssertFormat(float.TryParse(delayString, out delay), "Unable to parse image delay: {0}", parameters);
        }
        _imageDelayOver = false;
        StartCoroutine(DelayForImage(delay));
        imageBox.gameObject.SetActive(true);

        return true; // Wait for input
    }

    private IEnumerator DelayForImage(float delay)
    {
        yield return new WaitForSeconds(delay);
        _imageDelayOver = true;
    }

    private bool HandleCharacter(string parameters)
    {
        var regexMatch = CharacterParameters.Match(parameters);
        Debug.AssertFormat(regexMatch.Success, "Unknown CHARACTER parameters: {0}", parameters);

        var position = regexMatch.Groups["position"].Value;
        if (position.Equals("OFF")) // Turns all characters off
        {
            farLeftCharacter.gameObject.SetActive(false);
            leftCharacter.gameObject.SetActive(false);
            centerCharacter.gameObject.SetActive(false);
            rightCharacter.gameObject.SetActive(false);
            farRightCharacter.gameObject.SetActive(false);
            _farLeftCharacterParameters = null;
            _leftCharacterParameters = null;
            _centerCharacterParameters = null;
            _rightCharacterParameters = null;
            _farRightCharacterParameters = null;
            _characterPositions.Clear();
            return false; // Don't wait for input
        }

        Image positionImage;
        switch (position)
        {
            case "FAR_LEFT":
                positionImage = farLeftCharacter;
                break;

            case "LEFT":
                positionImage = leftCharacter;
                break;

            case "CENTER":
                positionImage = centerCharacter;
                break;

            case "RIGHT":
                positionImage = rightCharacter;
                break;

            case "FAR_RIGHT":
                positionImage = farRightCharacter;
                break;

            default:
                Debug.LogWarningFormat("Unknown position, placing in center: {0}", position);
                positionImage = centerCharacter;
                break;
        }

        // Clean up other characters mapped to that position.
        var currentCharacters = _characterPositions.Where(cp => cp.Value.Equals(positionImage)).Select(cp => cp.Key).ToList();
        foreach (var characterName in currentCharacters)
        {
            _characterPositions.Remove(characterName);
        }

        if (!regexMatch.Groups["name"].Success)
        {
            Debug.LogErrorFormat("No character name provided for non-OFF position: {0}", parameters);
            return true; // Wait for input
        }

        var name = regexMatch.Groups["name"].Value.ToLowerInvariant();
        if (name.Equals("off"))
        {
            positionImage.gameObject.SetActive(false);
            if (positionImage.Equals(farLeftCharacter))
            {
                _farLeftCharacterParameters = null;
            }
            else if (positionImage.Equals(leftCharacter))
            {
                _leftCharacterParameters = null;
            }
            else if (positionImage.Equals(centerCharacter))
            {
                _centerCharacterParameters = null;
            }
            else if (positionImage.Equals(rightCharacter))
            {
                _rightCharacterParameters = null;
            }
            else if (positionImage.Equals(farRightCharacter))
            {
                _farRightCharacterParameters = null;
            }
            return false; // Don't wait for input
        }

        if (_characterPositions.ContainsKey(name) &&
                 !_characterPositions[name].Equals(positionImage))
        {
            // Turn off the character if it was anywhere else already.
            _characterPositions[name].gameObject.SetActive(false);
        }
        _characterPositions[name] = positionImage;

        var mood = regexMatch.Groups["mood"].Success ? regexMatch.Groups["mood"].Value : "neutral";
        UpdateCharacter(name, mood);
        positionImage.gameObject.SetActive(true);

        return false; // Don't wait for input
    }

    private void UpdateCharacter(string name, string mood)
    {
        var normalizedName = name.ToLowerInvariant();
        var normalizedMood = mood.ToLowerInvariant();
        Debug.AssertFormat(_characterPositions.ContainsKey(normalizedName), "Attempted to update non-displayed character: {0}", name);
        var positionImage = _characterPositions[normalizedName];
        var filename = _characterAliases.ContainsKey(normalizedName) ? _characterAliases[normalizedName] : normalizedName;
        var path = string.Format("assets/characters/{0}/{1}.png", filename, normalizedMood);
        var character = _characters.LoadAsset<Sprite>(path);
        Debug.AssertFormat(character != null, "Unable to load character asset: {0}", path);
        positionImage.sprite = character;

        var updatedParameters = string.Format("{0} MOOD {1}", normalizedName, normalizedMood);
        if (positionImage.Equals(farLeftCharacter))
        {
            _farLeftCharacterParameters = updatedParameters;
        }
        else if (positionImage.Equals(leftCharacter))
        {
            _leftCharacterParameters = updatedParameters;
        }
        else if (positionImage.Equals(centerCharacter))
        {
            _centerCharacterParameters = updatedParameters;
        }
        else if (positionImage.Equals(rightCharacter))
        {
            _rightCharacterParameters = updatedParameters;
        }
        else if (positionImage.Equals(farRightCharacter))
        {
            _farRightCharacterParameters = updatedParameters;
        }
    }

    private bool SetCharacterColor(string parameters)
    {
        var regexMatch = CharColorParameters.Match(parameters);
        Debug.AssertFormat(regexMatch.Success, "Unknown CHAR_COLOR parameters: {0}", parameters);

        var colorString = regexMatch.Groups["color"].Value;
        Color color;
        if (!ColorUtility.TryParseHtmlString(colorString, out color))
        {
            Debug.LogWarningFormat("Unable to parse color: {0}", parameters);
            color = defaultCharacterColor;
        }
        var characterName = regexMatch.Groups["name"].Value.ToLowerInvariant();
        _characterColors[characterName] = color;

        return false; // Don't wait for input
    }

    private bool HandleAlias(string parameters)
    {
        var regexMatch = AliasParameters.Match(parameters);
        Debug.AssertFormat(regexMatch.Success, "Unknown ALIAS parameters: {0}", parameters);

        var alias = regexMatch.Groups["alias"].Value.ToLowerInvariant();
        if (regexMatch.Groups["forget"].Success)
        {
            Debug.AssertFormat(_characterAliases.ContainsKey(alias), "Attempted to remove unadded alias: {0}", alias);
            _characterAliases.Remove(alias);
        }
        else if (regexMatch.Groups["base"].Success)
        {
            _characterAliases[alias] = regexMatch.Groups["base"].Value.ToLowerInvariant();
        }
        else
        {
            Debug.LogAssertionFormat("Neither FORGET or AS parameters provided to ALIAS directive: {0}", parameters);
        }

        return false; // Don't wait for input
    }

    private bool HandleTime(string parameters)
    {
        _gameTime = parameters.Trim();
        Debug.LogFormat("Time Changed to: {0}", parameters);
        return false; // Don't wait for input
    }

    private bool HandleLocation(string parameters)
    {
        _gameLocation = parameters.Trim();
        Debug.LogFormat("Location Changed to: {0}", parameters);
        return false; // Don't wait for input
    }

    private void UpdateDialogue(string rawDialogue, List<string> tags)
    {
        choiceBox.gameObject.SetActive(false);
        dialogueBox.gameObject.SetActive(true);
        titleBox.gameObject.SetActive(false);

        string speaker = null;
        string dialogue = null;
        var regexMatch = DialogueRegex.Match(rawDialogue);
        if (regexMatch.Success)
        {
            speaker = regexMatch.Groups["speaker"].Value;
            dialogue = regexMatch.Groups["dialogue"].Value;
        }
        else
        {
            dialogue = rawDialogue;
        }

        var mood = _story.currentTags.FirstOrDefault();
        if (speaker != null && mood != null && MoodExists(speaker, mood))
        {
            UpdateCharacter(speaker, mood);
        }

        dialogueBox.SetText(speaker, dialogue, tags);
    }

    private bool MoodExists(string speaker, string mood)
    {
        var normalizedName = speaker.ToLowerInvariant();
        var normalizedMood = mood.ToLowerInvariant();
        var filename = _characterAliases.ContainsKey(normalizedName) ? _characterAliases[normalizedName] : normalizedName;
        var path = string.Format("assets/characters/{0}/{1}.png", filename, normalizedMood);
        return _characters.Contains(path);
    }

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else if (Instance != this)
        {
            Debug.LogAssertion("Two GameManagers present!");
            Destroy(gameObject);
        }

        DontDestroyOnLoad(gameObject);
    }

    private void Start()
    {
        _backgrounds = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, "AssetBundles/backgrounds"));
        Debug.Assert(_backgrounds != null, "Couldn't load backgrounds!");
        _sounds = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, "AssetBundles/sounds"));
        _music = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, "AssetBundles/music"));
        Debug.Assert(_backgrounds != null, "Couldn't load backgrounds!");
        _images = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, "AssetBundles/images"));
        Debug.Assert(_images != null, "Couldn't load images!");
        _characters = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, "AssetBundles/characters"));
        Debug.Assert(_characters != null, "Couldn't load characters!");
        _voices = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, "AssetBundles/voices"));
        Debug.Assert(_voices != null, "Couldn't load voices!");

        _story = new Story(storyAsset.text);
        latoyaLewd = (int)_story.variablesState["latoya_lewd"];
        latoyaObject = (int)_story.variablesState["latoya_object"];
        claraLewd = (int)_story.variablesState["clara_lewd"];
        claraLewd = (int)_story.variablesState["clara_lewd"];
        ramseyLewd = (int)_story.variablesState["ramsey_lewd"];
        ramseyObject = (int)_story.variablesState["ramsey_object"];
        f0c5Object = (int)_story.variablesState["f0c5_object"];
        f0c5Object = (int)_story.variablesState["f0c5_object"];
        _story.ObserveVariable("latoya_lewd", (varName, newValue) => latoyaLewd = (int)newValue);
        _story.ObserveVariable("latoya_object", (varName, newValue) => latoyaObject = (int)newValue);
        _story.ObserveVariable("clara_lewd", (varName, newValue) => claraLewd = (int)newValue);
        _story.ObserveVariable("clara_lewd", (varName, newValue) => claraLewd = (int)newValue);
        _story.ObserveVariable("ramsey_lewd", (varName, newValue) => ramseyLewd = (int)newValue);
        _story.ObserveVariable("ramsey_object", (varName, newValue) => ramseyObject = (int)newValue);
        _story.ObserveVariable("f0c5_lewd", (varName, newValue) => f0c5Lewd = (int)newValue);
        _story.ObserveVariable("f0c5_object", (varName, newValue) => f0c5Object = (int)newValue);

        _story.BindExternalFunction("makeNewDesiredOrder", () =>
            {
                CoffeeMinigame.Instance.MakeNewDesiredOrder();
                return CoffeeMinigame.Instance.CurrentDesiredOrder.ToString().ToLowerInvariant();
            });
        _story.BindExternalFunction("setCaffeine", (bool caffeinated) => CoffeeMinigame.Instance.SetCaffeine(caffeinated));
        _story.BindExternalFunction("setShots", (int number) => CoffeeMinigame.Instance.SetShots(number));
        _story.BindExternalFunction("addMilk", () => CoffeeMinigame.Instance.AddMilk());
        _story.BindExternalFunction("addFoam", () => CoffeeMinigame.Instance.AddFoam());
        _story.BindExternalFunction("addVanilla", () => CoffeeMinigame.Instance.AddVanilla());
        _story.BindExternalFunction("addStrawberry", () => CoffeeMinigame.Instance.AddStrawberry());
        _story.BindExternalFunction("addChocolate", () => CoffeeMinigame.Instance.AddChocolate());
        _story.BindExternalFunction("finishCreatedOrder", () => { return CoffeeMinigame.Instance.FinishCreatedOrder(); });
        _story.BindExternalFunction("getCreatedOrder", () => CoffeeMinigame.Instance.CurrentCreatedOrder.ToString().ToLowerInvariant());
        _story.BindExternalFunction("keepTakingOrders", () => { return CoffeeMinigame.Instance.KeepTakingOrders(); });

        dialogueBox.gameObject.SetActive(false);
        choiceBox.gameObject.SetActive(false);

        titleBox.gameObject.SetActive(true);
        titleBox.SetText("hutia");
    }

    private void Update()
    {
        switch (_gameState)
        {
            case GameState.TitleScreen:
                if ((Input.GetButtonUp("Fire1") || Input.GetButtonUp("Submit")))
                {
                    ShowMainMenu();
                }
                break;

            case GameState.MainMenu:
                if (Input.GetButtonDown("Fire2") || Input.GetButtonDown("Cancel"))
                {
                    ShowMainMenu();
                    return;
                }
                break;

            case GameState.InGameMenu:
                if (Input.GetButtonDown("Fire2") || Input.GetButtonDown("Cancel"))
                {
                    if (loadGameDialog.activeInHierarchy || optionsDialog.activeInHierarchy || saveGameDialog.activeInHierarchy)
                    {
                        ShowInGameMenu();
                    }
                    else
                    {
                        ContinueStory(advanceIfAble: false);
                    }
                }
                break;

            case GameState.Gameplay:
            default:
                if (Input.GetButtonDown("Fire2") || Input.GetButtonDown("Cancel"))
                {
                    ShowInGameMenu();
                    return;
                }

                if (imageBox.gameObject.activeInHierarchy && _imageDelayOver && (Input.GetButtonUp("Fire1") || Input.GetButtonUp("Submit")))
                {
                    imageBox.gameObject.SetActive(false);
                    imageBox.sprite = null;
                    imageBox.GetComponent<Animator>().runtimeAnimatorController = null;
                    ContinueStory();
                }
                break;
        }
    }

    private void ShowMainMenu()
    {
        dialogueBox.gameObject.SetActive(false);
        titleBox.gameObject.SetActive(false);
        loadGameDialog.SetActive(false);
        optionsDialog.SetActive(false);

        var mainMenu = new List<KeyValuePair<string, UnityAction>>();
        mainMenu.Add(new KeyValuePair<string, UnityAction>("Start A New Game", StartGame));
        if (SaveGameDialog.AnySavedGames)
        {
            mainMenu.Add(new KeyValuePair<string, UnityAction>("Load Game", () =>
                {
                    choiceBox.gameObject.SetActive(false);
                    loadGameDialog.gameObject.SetActive(true);
                }));
        }
        mainMenu.Add(new KeyValuePair<string, UnityAction>("Options", () =>
            {
                choiceBox.gameObject.SetActive(false);
                optionsDialog.gameObject.SetActive(true);
            }));
        mainMenu.Add(new KeyValuePair<string, UnityAction>("Quit To Desktop", Application.Quit));
        choiceBox.gameObject.SetActive(true);
        choiceBox.ShowMenu(mainMenu);
        _gameState = GameState.MainMenu;
    }

    private void StartGame()
    {
        choiceBox.gameObject.SetActive(false);
        _story.ResetState();
        CoffeeMinigame.Instance.Reset();
        HandleCharacter("OFF");
        UpdateBackground("IMAGE bedroom");
        imageBox.gameObject.SetActive(false);
        imageBox.sprite = null;
        imageBox.GetComponent<Animator>().runtimeAnimatorController = null;
        _gameState = GameState.Gameplay;
        ContinueStory();
    }

    private void ShowInGameMenu()
    {
        dialogueBox.gameObject.SetActive(false);
        titleBox.gameObject.SetActive(false);
        saveGameDialog.SetActive(false);
        loadGameDialog.SetActive(false);
        optionsDialog.SetActive(false);

        var mainMenu = new List<KeyValuePair<string, UnityAction>>();
        mainMenu.Add(new KeyValuePair<string, UnityAction>("Back to Game", () => ContinueStory(advanceIfAble: false)));
        mainMenu.Add(new KeyValuePair<string, UnityAction>("Save Game", () =>
            {
                choiceBox.gameObject.SetActive(false);
                saveGameDialog.gameObject.SetActive(true);
            }));
        if (SaveGameDialog.AnySavedGames)
        {
            mainMenu.Add(new KeyValuePair<string, UnityAction>("Load Game", () =>
                {
                    choiceBox.gameObject.SetActive(false);
                    loadGameDialog.gameObject.SetActive(true);
                }));
        }
        mainMenu.Add(new KeyValuePair<string, UnityAction>("Options", () =>
            {
                choiceBox.gameObject.SetActive(false);
                optionsDialog.gameObject.SetActive(true);
            }));
        mainMenu.Add(new KeyValuePair<string, UnityAction>("Quit to Title", ShowMainMenu));
        choiceBox.gameObject.SetActive(true);
        choiceBox.ShowMenu(mainMenu);
        _gameState = GameState.InGameMenu;
    }
}
