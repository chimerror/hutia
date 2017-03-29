using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Credits : MonoBehaviour
{
    public string creditsMusic = "OFF";
    public float scrollAmount = 1f;
    public float scrollDelay = 0.100f;
    private Text _creditsText;

    private void OnEnable()
    {
        _creditsText = GetComponent<Text>();
        _creditsText.rectTransform.anchoredPosition = Vector2.zero;
        StartCoroutine(ScrollCredits());
    }

    private IEnumerator ScrollCredits()
    {
        do
        {
            _creditsText.rectTransform.anchoredPosition += new Vector2(0.0f, scrollAmount);
            yield return new WaitForSeconds(scrollDelay);
        } while (_creditsText.rectTransform.anchoredPosition.y < _creditsText.rectTransform.sizeDelta.y);
        gameObject.SetActive(false);
    }

    private void Update()
    {
        if (Input.anyKeyDown)
        {
            gameObject.SetActive(false);
        }
    }
}
