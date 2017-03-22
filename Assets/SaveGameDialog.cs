using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using Newtonsoft.Json;

public class SaveGameDialog : MonoBehaviour
{
    public static readonly Regex SaveGameFilenameRegex = new Regex(@"^\d\d\d\d_\d\d_\d\d_\d\d\d\d\d\d-(?<gameTime>[^""<>|:*?\\/-]+)-(?<gameLocation>[^""<>|:*?\\/-]+)-(?<notes>[^""<>|:*?\\/-]+)$");

    public GameObject ExistingSavesTop;
    public Transform ExistingSavesContent;
    public Button ExistingSaveButtonPrefab;
    public Button SaveInNewSlotButton;
    public Scrollbar VerticalScrollbar;
    public Text SaveNotes;

    public static bool AnySavedGames
    {
        get
        {
            return Directory.GetFiles(Application.persistentDataPath, "*.savedgame").Any();
        }
    }

    public void SaveGame(string location = null)
    {
        // It's more predictable to just write a new file every time
        if (!string.IsNullOrEmpty(location))
        {
            File.Delete(location);
        }

        var notes = string.IsNullOrEmpty(SaveNotes.text) ? "No Notes" : SaveNotes.text;
        var gameTime = string.IsNullOrEmpty(GameManager.Instance.GameTime) ? "Unknown Time" : GameManager.Instance.GameTime;
        var gameLocation = string.IsNullOrEmpty(GameManager.Instance.GameLocation) ? "Unknown Location" : GameManager.Instance.GameLocation;
        var filename = string.Format("{0}-{1}-{2}-{3}.savedgame",
            DateTime.Now.ToString("yyyy_MM_dd_HHmmss"),
            gameTime,
            gameLocation,
            notes);
        location = Path.Combine(Application.persistentDataPath, filename);
        var saveFile = new SaveFile();
        saveFile.EngineState = GameManager.Instance.EngineState;
        saveFile.StoryState = GameManager.Instance.StoryState;
        File.WriteAllText(location, JsonConvert.SerializeObject(saveFile));
        GameManager.Instance.ContinueStory(advanceIfAble: false);
    }


    private void OnEnable()
    {
        int childCount = ExistingSavesContent.childCount;
        for (int currentChild = childCount - 1; currentChild >= 0; currentChild--)
        {
            var childObject = ExistingSavesContent.GetChild(currentChild).gameObject;
            Destroy(childObject);
        }

        var savedGames = Directory.GetFiles(Application.persistentDataPath, "*.savedgame");
        ExistingSavesTop.SetActive(savedGames.Any());
        for (int currentSavedGame = 0; currentSavedGame < savedGames.Length; currentSavedGame++ )
        {
            var currentSavedGameFile = savedGames[currentSavedGame];
            var existingSaveButton = Instantiate(ExistingSaveButtonPrefab);
            existingSaveButton.gameObject.name = string.Format("Saved Game Slot #{0}", currentSavedGame.ToString());
            existingSaveButton.gameObject.SetActive(true);
            existingSaveButton.transform.SetParent(ExistingSavesContent, false);
            existingSaveButton.onClick.AddListener(() => SaveGame(currentSavedGameFile));

            var filename = Path.GetFileNameWithoutExtension(currentSavedGameFile);
            var lastWriteTime = File.GetLastWriteTime(currentSavedGameFile);
            var match = SaveGameFilenameRegex.Match(filename);
            Debug.AssertFormat(match.Success, "Invalid file name in save files: {0}", currentSavedGameFile);
            var notes = match.Groups["notes"].Value;
            var gameTime = match.Groups["gameTime"].Value;
            var gameLocation = match.Groups["gameLocation"].Value;
            var existingSaveText = existingSaveButton.GetComponentInChildren<Text>();
            existingSaveText.text = string.Format("[{0}] {1}, {2} ({3} {4})",
                notes,
                gameTime,
                gameLocation,
                lastWriteTime.ToShortDateString(),
                lastWriteTime.ToShortTimeString());

            var saveGameButton = existingSaveButton.GetComponent<SaveGameButton>();
            saveGameButton.scrollbar = VerticalScrollbar;

            if (currentSavedGame == savedGames.Length - 1)
            {
                saveGameButton.scrollbarLocation = 0.0f;
            }
            else
            {
                saveGameButton.scrollbarLocation = 1.0f - (currentSavedGame / (float)savedGames.Length);
            }

        }
    }

    private void Update()
    {
        var currentlySelected = EventSystem.current.currentSelectedGameObject;
        if ((Input.GetAxis("Horizontal") != 0.0f || Input.GetAxis("Vertical") != 0.0f) &&
             currentlySelected == null)
        {
            EventSystem.current.SetSelectedGameObject(SaveInNewSlotButton.gameObject);
        }
    }

    private void OnDisable()
    {
        EventSystem.current.SetSelectedGameObject(null);
    }
}
