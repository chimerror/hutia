using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class SaveGameButton : MonoBehaviour, ISelectHandler
{
    public float scrollbarLocation;
    public Scrollbar scrollbar;

    public void OnSelect(BaseEventData eventData)
    {
        scrollbar.value = scrollbarLocation;
    }
}
