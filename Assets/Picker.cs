using System.Collections;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class Picker : MonoBehaviour
{

	public static Picker Singleton;

	public GameObject Handler;

	public Texture2D cursorRegular;
	public Texture2D cursorHover;
	public CursorMode cursorMode = CursorMode.Auto;
	public Vector2 hotSpot = Vector2.zero;

	public bool isPicking = false;

	void Awake ()
	{
		if (Picker.Singleton == null) {
			Picker.Singleton = this;
		} else {
			Destroy (gameObject);
		}
	}


	public void Pick ()
	{
		isPicking = true;
		Handler.transform.parent.DOKill (true);
		Handler.transform.parent.DOMove (new Vector2 (-Handler.transform.parent.GetComponent<RectTransform> ().sizeDelta.x * .5f, Handler.transform.parent.GetComponent<RectTransform> ().position.y), .6f).SetEase (Ease.InExpo);
		transform.GetChild (0).GetComponent<RectTransform> ().DOKill (true);
		transform.GetChild (0).GetComponent<RectTransform> ().DOBlendableLocalMoveBy (Vector3.up * 400, .5f).SetDelay (.3f).SetEase (Ease.OutExpo);
		Handler.transform.parent.GetChild (0).DOKill (true);
		Handler.transform.parent.GetChild (0).DOBlendableLocalMoveBy (Vector3.left * 1920, .5f).SetEase (Ease.InQuad);
		Cursor.SetCursor (cursorHover, Vector2.zero, cursorMode);
	}

	public void StopPick ()
	{
		isPicking = false; 
		Handler.transform.parent.DOKill (true);
		Handler.transform.parent.DOMove (new Vector2 (0, Handler.transform.parent.GetComponent<RectTransform> ().position.y), .6f).SetDelay (.3f).SetEase (Ease.OutExpo);
		transform.GetChild (0).GetComponent<RectTransform> ().DOKill (true);
		transform.GetChild (0).GetComponent<RectTransform> ().DOBlendableLocalMoveBy (-Vector3.up * 400, .5f).SetEase (Ease.InExpo);
		Handler.transform.parent.GetChild (0).DOKill (true);
		Handler.transform.parent.GetChild (0).DOBlendableLocalMoveBy (-Vector3.left * 1920, .5f).SetEase (Ease.OutQuad);
		Cursor.SetCursor (cursorRegular, Vector2.zero, cursorMode);
	}

	// Update is called once per frame
	void Update ()
	{

	}
}

