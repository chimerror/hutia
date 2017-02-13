using System.Collections;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using UnityEngine;
using Ink.Runtime;

public class GameManager : MonoBehaviour
{
    public static GameManager Instance { get; private set; }

    /// <summary>
    /// Regular expression for catching dialogue.
    /// </summary>
    /// <remarks>
    /// The start of the line, followed by one or more word characters grouped as 'speaker', followed by a colon,
    /// followed by any number of characters grouped as 'dialogue', followed by the end of the line.
    /// </remarks>
    private readonly static Regex DialogueRegex = new Regex(@"^(?<speaker>\w+):(?<dialogue>.*)$");

    public TextAsset storyAsset;
    public DialogueBox dialogueBox;
    public ChoiceBox choiceBox;

    private Story _story;
    private bool _storyStarted;

    public void ContinueStory(int choice = -1)
    {
        if (choice > -1)
        {
            Debug.Log(choice);
            _story.ChooseChoiceIndex(choice);
        }

        if (_story.canContinue)
        {
            choiceBox.gameObject.SetActive(false);
            dialogueBox.gameObject.SetActive(true);

            var rawDialogue = _story.Continue();
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
        else if (_story.currentChoices.Count > 0)
        {
            choiceBox.gameObject.SetActive(true);
            dialogueBox.gameObject.SetActive(false);

            choiceBox.SetChoices(_story.currentChoices);
        }
        else
        {
            Debug.Log("Ran out of story!");
        }
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
