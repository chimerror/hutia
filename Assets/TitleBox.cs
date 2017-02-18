using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TitleBox : MonoBehaviour
{
    public Color defaultBorderColor;

    private Outline _border;
    private Text _text;

    public void SetText(string text)
    {
        SetText(text, defaultBorderColor);
    }

    public void SetText(string text, Color color)
    {
        _border.effectColor = color;
        _text.text = text;
        LayoutRebuilder.ForceRebuildLayoutImmediate(transform as RectTransform);
    }

    private void Awake()
    {
        _border = GetComponent<Outline>();
        _text = GetComponentInChildren<Text>();
    }

    private void Update()
    {
        if (Input.GetButtonDown("Fire1") || Input.GetButtonDown("Submit"))
        {
            GameManager.Instance.ContinueStory();
        }
    }
}
