using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class ChoiceBox : MonoBehaviour
{
    public Button ChoiceButtonPrefab;

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
            Debug.LogFormat("Adding choice {0}", currentChoice);
            var choice = choices[currentChoice];
            var choiceButton = Instantiate(ChoiceButtonPrefab);
            choiceButton.transform.SetParent(transform, false);
            choiceButton.onClick.AddListener(() => GameManager.Instance.ContinueStory(choice.index));

            var choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;

            choiceButton.gameObject.SetActive(true);
        }
    }
}
