﻿using System.Collections;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using System.Collections.Generic;
using UnityEngine;

public class CodeComponent : MonoBehaviour, IDragHandler,  IBeginDragHandler, IEndDragHandler
{


	public CodeValue[] values;
	public TextAsset script;

	private Vector2 velocity;
	private Vector2 offset;
	private Vector2 lastPos;

	public bool isAttached = false;

	private bool isDragging = false;


	public int resistanceDetach = 50;
	// Use this for initialization
	public void OnDrag (PointerEventData eventData)
	{
		//		Debug.Log xx(eventData.position);

		if (!isAttached) {
			GetComponent<RectTransform> ().position = eventData.position + offset;

			Vector2 pos = new Vector2 (GetComponent<RectTransform> ().position.x, GetComponent<RectTransform> ().position.y);
			velocity = pos - lastPos;
			lastPos = pos;
		} else {
			if ((new Vector3 (eventData.position.x, eventData.position.y, 0) - GetComponent<RectTransform> ().position).magnitude > resistanceDetach) {
				isAttached = false;
				transform.SetParent (GetComponentInParent<Canvas> ().transform);
				transform.SetAsFirstSibling ();
			}
		}
	}

	public void OnBeginDrag (PointerEventData eventData)
	{
		Vector2 pos = new Vector2 (GetComponent<RectTransform> ().position.x, GetComponent<RectTransform> ().position.y);
		offset = (pos - eventData.position);

		isDragging = true;
		NoteManager.Singleton.isDragging = true;
	}

	public void OnEndDrag (PointerEventData eventData)
	{
		isDragging = false;
		NoteManager.Singleton.isDragging = false;
	}

	void Update ()
	{
		if (!isDragging && !isAttached) {
			GetComponent<RectTransform> ().position += new Vector3 (velocity.x, velocity.y, 0) * Time.deltaTime;
			velocity *= .95f;
		}
	}
}