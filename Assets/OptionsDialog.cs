using UnityEngine;
using UnityEngine.EventSystems;

public class OptionsDialog : MonoBehaviour
{
    private const string TestDialogue = "It's not every day that a four-tailed fox turns you into a hyena...";

    public DialogueBox dialogueBox;

    public void UpdateTestDialogue()
    {
        dialogueBox.SetText(string.Empty, TestDialogue, null);
    }

    private void OnEnable()
    {
        dialogueBox.gameObject.SetActive(true);
        UpdateTestDialogue();
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
            EventSystem.current.SetSelectedGameObject(transform.GetChild(0).gameObject);
        }
    }

    private void OnDisable()
    {
        EventSystem.current.SetSelectedGameObject(null);
    }
}
