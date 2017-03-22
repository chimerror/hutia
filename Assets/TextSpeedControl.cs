using UnityEngine;
using UnityEngine.UI;

public class TextSpeedControl : MonoBehaviour
{
    public SuperTextMesh dialogueText;
    public Slider slider;
    public float minimumReadDelay = 0.1f;

    public void OnValueChanged()
    {
        dialogueText.readDelay = minimumReadDelay * (1.0f - slider.value);
    }

    private void OnEnable()
    {
        slider.value = 1.0f - dialogueText.readDelay / minimumReadDelay;
    }
}
