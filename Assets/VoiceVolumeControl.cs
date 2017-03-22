using UnityEngine;
using UnityEngine.UI;

public class VoiceVolumeControl : MonoBehaviour
{
    public AudioSource audioSource;
    public Image muteImage;
    public Sprite soundOn;
    public Sprite soundOff;
    public Slider slider;

    public void OnMuteButtonClick()
    {
        audioSource.mute = !audioSource.mute;
        muteImage.sprite = audioSource.mute ? soundOff : soundOn;
        slider.interactable = !audioSource.mute;
    }

    public void OnSliderValueChanged()
    {
        audioSource.volume = slider.value;
    }

    private void OnEnable()
    {
        slider.value = audioSource.volume;
    }

    private void OnDisable()
    {
        if (audioSource != null)
        {
            audioSource.Stop();
            audioSource.clip = null;
        }
    }
}
