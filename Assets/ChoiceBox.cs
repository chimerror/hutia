using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using Ink.Runtime;

public class ChoiceBox : MonoBehaviour
{
    public Button ChoiceButtonPrefab;
    private GameObject _firstChoice;

    public void SetChoices(List<Choice> choices)
    {
        ShowMenu(choices.Select(c => new KeyValuePair<string, UnityAction>(c.text, () => GameManager.Instance.ContinueStory(c.index))).ToList());
    }

    public void ShowMenu(List<KeyValuePair<string, UnityAction>> choices)
    {
        int childCount = transform.childCount;
        for (int currentChild = childCount - 1; currentChild >= 0; currentChild--)
        {

            var childObject = transform.GetChild(currentChild).gameObject;
            Destroy(childObject);
        }

        for (int currentChoice = 0; currentChoice < choices.Count; currentChoice++)
        {
            var choice = choices[currentChoice];
            var choiceButton = Instantiate(ChoiceButtonPrefab);
            choiceButton.transform.SetParent(transform, false);

            var choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.Key;
            choiceButton.onClick.AddListener(choice.Value);

            if (currentChoice == 0)
            {
                _firstChoice = choiceButton.gameObject;
            }

            choiceButton.gameObject.SetActive(true);
        }
    }

    private void Update()
    {
        if (Input.GetAxis("Mouse X") != 0.0f || Input.GetAxis("Mouse Y") != 0.0f)
        {
            EventSystem.current.SetSelectedGameObject(null);
        }
        else if ((Input.GetAxis("Horizontal") != 0.0f || Input.GetAxis("Vertical") != 0.0f) &&
                 EventSystem.current.currentSelectedGameObject == null)
        {
            EventSystem.current.SetSelectedGameObject(_firstChoice);
        }
    }
}
