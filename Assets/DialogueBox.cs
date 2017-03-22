using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueBox : MonoBehaviour
{
    public Font defaultFont;
    public Font aiFont;
    private Image _border;
    private Image _speakerBox;
    private Text _speakerText;
    private SuperTextMesh _dialogueText;

    public void SetText(string speaker, string dialogue, List<string> tags)
    {
        dialogue = dialogue.Trim();

        if (tags != null && tags.Contains("thinking"))
        {
            dialogue = string.Format("<i>({0})</i>", dialogue);
        }

        string normalizedSpeaker = null;
        string alias = null;
        bool hasAlias = false;
        if (string.IsNullOrEmpty(speaker))
        {
            _speakerBox.gameObject.SetActive(false);
            _border.color = GameManager.Instance.defaultCharacterColor;
        }
        else
        {
            speaker = speaker.Trim();
            normalizedSpeaker = speaker.ToLowerInvariant();
            hasAlias = GameManager.Instance.CharacterAliases.TryGetValue(normalizedSpeaker, out alias);
            Color color;
            var characterColors = GameManager.Instance.CharacterColors;
            if (characterColors.ContainsKey(normalizedSpeaker))
            {
                color = characterColors[normalizedSpeaker];
            }
            else if (hasAlias && characterColors.ContainsKey(alias))
            {
                color = characterColors[alias];
            }
            else
            {
                color = GameManager.Instance.defaultCharacterColor;
            }
            _border.color = color;
            _speakerBox.color = color;
            _speakerBox.gameObject.SetActive(true);
            _speakerText.text = speaker;

            string voiceName = hasAlias ? alias : normalizedSpeaker;
            if (_dialogueText.data.voices.ContainsKey(voiceName))
            {
                dialogue = string.Format("<v={0}>{1}", voiceName, dialogue);
            }
        }

        if (string.IsNullOrEmpty(speaker))
        {
            _dialogueText.font = defaultFont;
        }
        else if (speaker.Equals("0xF0C5") || (hasAlias && alias.Equals("0xf0c5")))
        {
            _dialogueText.font = aiFont;
        }
        else
        {
            _dialogueText.font = defaultFont;
        }

        _dialogueText.Text = dialogue;
    }

    public void CompletedUnRead()
    {
        GameManager.Instance.ContinueStory();
    }

    private void Awake()
    {
        _border = transform.FindChild("Border").GetComponent<Image>();
        _speakerBox = transform.FindChild("Border/Speaker").GetComponent<Image>();
        _speakerText = GetComponentInChildren<Text>();
        _dialogueText = GetComponentInChildren<SuperTextMesh>();
    }

    private void Update()
    {
        if (Input.GetButtonDown("Fire1") || Input.GetButtonDown("Submit"))
        {
            if (_dialogueText.reading)
            {
                _dialogueText.SpeedRead();
            }
            else if (GameManager.Instance.GameState != GameState.Gameplay)
            {
                _dialogueText.Rebuild();
            }
            else if (!_dialogueText.unreading)
            {
                _dialogueText.UnRead();
            }
            else
            {
                GameManager.Instance.ContinueStory();
            }
        }

        if (Input.GetButtonUp("Fire1") || Input.GetButtonUp("Submit"))
        {
            _dialogueText.RegularRead();
        }
    }
}
