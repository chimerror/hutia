using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueBox : MonoBehaviour
{
    private Image _border;
    private Image _speakerBox;
    private Text _speakerText;
    private SuperTextMesh _dialogueText;

    public void SetText(string speaker, string dialogue)
    {
        if (string.IsNullOrEmpty(speaker))
        {
            _speakerBox.gameObject.SetActive(false);
            _border.color = GameManager.Instance.defaultCharacterColor;
        }
        else
        {
            Color color;
            if (GameManager.Instance.CharacterColors.ContainsKey(speaker))
            {
                color = GameManager.Instance.CharacterColors[speaker];
            }
            else
            {
                color = GameManager.Instance.defaultCharacterColor;
            }
            _border.color = color;
            _speakerBox.color = color;
            _speakerBox.gameObject.SetActive(true);
            _speakerText.text = speaker;
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
