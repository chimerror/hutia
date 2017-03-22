using UnityEngine;
using UnityEngine.UI;

public class SoundVolumeControl : MonoBehaviour
{
    public AudioClip testSound;
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
        if (!audioSource.mute)
        {
            audioSource.Play();
        }
    }

    public void OnSliderValueChanged()
    {
        audioSource.volume = slider.value;
        audioSource.Play();
    }

    private void OnEnable()
    {
        slider.value = audioSource.volume;
        audioSource.clip = testSound;
        audioSource.loop = false;
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
