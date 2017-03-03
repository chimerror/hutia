using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using Ink.Runtime;

public class ChoiceBox : MonoBehaviour
{
    public Button ChoiceButtonPrefab;
    private GameObject _firstChoice;

    public void SetChoices(List<Choice> choices)
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
            choiceButton.onClick.AddListener(() => GameManager.Instance.ContinueStory(choice.index));

            var choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;

            choiceButton.gameObject.SetActive(true);

            if (currentChoice == 0)
            {
                _firstChoice = choiceButton.gameObject;
            }
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
