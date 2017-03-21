using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using Newtonsoft.Json;

public class LoadGameDialog : MonoBehaviour
{
    public Transform ExistingSavesContent;
    public Button ExistingSaveButtonPrefab;
    public Scrollbar VerticalScrollbar;
    private GameObject _firstSavedGame;

    private void OnEnable()
    {
        int childCount = ExistingSavesContent.childCount;
        for (int currentChild = childCount - 1; currentChild >= 0; currentChild--)
        {
            var childObject = ExistingSavesContent.GetChild(currentChild).gameObject;
            Destroy(childObject);
        }

        var savedGames = Directory.GetFiles(Application.persistentDataPath, "*.savedgame");
        Debug.Assert(savedGames.Any(), "Load dialog shown without saved games!");
        for (int currentSavedGame = 0; currentSavedGame < savedGames.Length; currentSavedGame++)
        {
            var currentSavedGameFile = savedGames[currentSavedGame];
            var existingSaveButton = Instantiate(ExistingSaveButtonPrefab);
            existingSaveButton.gameObject.name = string.Format("Saved Game Slot #{0}", currentSavedGame.ToString());
            existingSaveButton.gameObject.SetActive(true);
            existingSaveButton.transform.SetParent(ExistingSavesContent, false);
            existingSaveButton.onClick.AddListener(() => LoadGame(currentSavedGameFile));

            var filename = Path.GetFileNameWithoutExtension(currentSavedGameFile);
            var lastWriteTime = File.GetLastWriteTime(currentSavedGameFile);
            var match = SaveGameDialog.SaveGameFilenameRegex.Match(filename);
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

            if (currentSavedGame == 0)
            {
                _firstSavedGame = existingSaveButton.gameObject;
            }

        }
    }

    private void LoadGame(string location)
    {
        var saveFile = JsonConvert.DeserializeObject<SaveFile>(File.ReadAllText(location));
        GameManager.Instance.StoryState = saveFile.StoryState;
        GameManager.Instance.EngineState = saveFile.EngineState;
        GameManager.Instance.ContinueStory(advanceIfAble: false);
    }

    private void Update()
    {
        var currentlySelected = EventSystem.current.currentSelectedGameObject;
        if (Input.GetAxis("Mouse X") != 0.0f || Input.GetAxis("Mouse Y") != 0.0f)
        {
            EventSystem.current.SetSelectedGameObject(null);
        }
        else if ((Input.GetAxis("Horizontal") != 0.0f || Input.GetAxis("Vertical") != 0.0f) &&
             currentlySelected == null)
        {
            EventSystem.current.SetSelectedGameObject(_firstSavedGame);
        }
    }

    private void OnDisable()
    {
        EventSystem.current.SetSelectedGameObject(null);
    }
}
