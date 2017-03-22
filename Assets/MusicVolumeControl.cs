using UnityEngine;
using UnityEngine.UI;

public class MusicVolumeControl : MonoBehaviour
{
    public AudioClip testMusic;
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
        audioSource.clip = testMusic;
        audioSource.loop = true;
        audioSource.Play();
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
