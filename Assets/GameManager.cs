using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class GameManager : MonoBehaviour
{
    public static GameManager Instance { get; private set; }

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
    private readonly static Regex DirectiveRegex = new Regex(@"^(?<directive>BG|TITLE|MUSIC|IMAGE|CHARACTER|CHAR_COLOR)\s+(?<parameters>.+)$");

    private readonly static Regex BackgroundParameters = new Regex(@"^(?<type>IMAGE|COLOR)\s(?<value>.+)$");

    private readonly static Regex TitleParameters = new Regex(@"(COLOR\s+(?<color>#?\w+)\s+)?(?<title>.*)$");

    private readonly static Regex CharColorParameters = new Regex(@"^(?<color>#?\w+)\s+(?<name>.+)$");

    /// <summary>
    /// Regular expression for catching dialogue.
    /// </summary>
    /// <remarks>
    /// The start of the string, followed by one or more word characters grouped as 'speaker', followed by a colon,
    /// followed by any number of characters grouped as 'dialogue', followed by the end of the string.
    /// </remarks>
    private readonly static Regex DialogueRegex = new Regex(@"^(?<speaker>\w+):(?<dialogue>.*)$");

    public Color defaultBackgroundColor;
    public Color defaultCharacterColor;
    public Image background;
    public TextAsset storyAsset;
    public DialogueBox dialogueBox;
    public ChoiceBox choiceBox;
    public TitleBox titleBox;

    private AssetBundle _backgrounds;
    private Story _story;
    private bool _storyStarted;
    private Dictionary<string, Color> _characterColors = new Dictionary<string, Color>();

    public Dictionary<string, Color> CharacterColors
    {
        get
        {
            return _characterColors;
        }
    }

    public void ContinueStory(int choice = -1)
    {
        if (choice > -1)
        {
            Debug.Log(choice);
            _story.ChooseChoiceIndex(choice);
        }

        string rawInput = _story.canContinue ? _story.Continue() : null;
        while (rawInput != null && DirectiveRegex.IsMatch(rawInput))
        {
            var waitForInput = PerformDirective(rawInput);
            if (waitForInput)
            {
                return;
            }

            rawInput = _story.canContinue ? _story.Continue() : null;
        }

        if (rawInput != null)
        {
            UpdateDialogue(rawInput);
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
            Debug.Log("Ran out of story!");
        }
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

            case "CHAR_COLOR":
                return SetCharacterColor(parameters);

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

        return false; // Don't wait for input
    }

    private bool ShowTitle(string parameters)
    {
        dialogueBox.gameObject.SetActive(false);
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
        var characterName = regexMatch.Groups["name"].Value;
        _characterColors[characterName] = color;

        return false; // Don't wait for input
    }

    private void UpdateDialogue(string rawDialogue)
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
        dialogueBox.SetText(speaker, dialogue);
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
        Debug.Assert(_backgrounds != null, "Couldn't load assets!");
        _story = new Story(storyAsset.text);
        _storyStarted = false;
        dialogueBox.gameObject.SetActive(false);
        choiceBox.gameObject.SetActive(false);
    }

    private void Update()
    {
        if (!_storyStarted && (Input.GetButtonUp("Fire1") || Input.GetButtonUp("Submit")))
        {
            ContinueStory();
            _storyStarted = true;
        }
    }
}
