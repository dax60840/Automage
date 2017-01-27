using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class Pointer : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
	
	public Texture2D cursorRegular;
	public Texture2D cursorHover;
	public CursorMode cursorMode = CursorMode.Auto;
	public Vector2 hotSpot = Vector2.zero;

	public void OnPointerEnter (PointerEventData eventData)
	{
		if (!Picker.Singleton.isPicking)
			Cursor.SetCursor (cursorHover, hotSpot, cursorMode);
	}

	public void OnPointerExit (PointerEventData eventData)
	{
		if (!Picker.Singleton.isPicking)
			Cursor.SetCursor (cursorRegular, Vector2.zero, cursorMode);
	}

}
