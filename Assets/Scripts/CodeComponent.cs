using System.Collections;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class CodeComponent : MonoBehaviour, IDragHandler,  IBeginDragHandler, IEndDragHandler
{


	public CodeValue[] values;
	public TextAsset script;

	protected Vector2 velocity;
	protected Vector2 offset;
	protected Vector2 lastPos;

	public Vector2 smallSize;
	public Vector2 bigSize;

	public bool isAttached = false;

	protected bool isDragging = false;


	public int resistanceDetach = 50;


	public GameObject[] extend;
	// Use this for initialization
	virtual public void OnDrag (PointerEventData eventData)
	{
		//		Debug.Log xx(eventData.position);

		if (!isAttached) {
			GetComponent<RectTransform> ().position = eventData.position + offset;

			Vector2 pos = new Vector2 (GetComponent<RectTransform> ().position.x, GetComponent<RectTransform> ().position.y);
			velocity = pos - lastPos;
			lastPos = pos;
		} else {
			if ((new Vector3 (eventData.position.x, eventData.position.y, 0) - GetComponent<RectTransform> ().position).magnitude > resistanceDetach) {
				Vector2 pos = new Vector2 (GetComponent<RectTransform> ().position.x, GetComponent<RectTransform> ().position.y);
				Retract ();
				isAttached = false;
				transform.SetParent (GetComponentInParent<NoteParent> ().transform);
				transform.SetAsFirstSibling ();
			}
		}
	}

	virtual public void OnBeginDrag (PointerEventData eventData)
	{
		transform.SetAsFirstSibling ();
		Vector2 pos = new Vector2 (GetComponent<RectTransform> ().position.x, GetComponent<RectTransform> ().position.y);
		offset = (pos - eventData.position);

		isDragging = true;
		NoteManager.Singleton.isDragging = true;
	}

	virtual public void OnEndDrag (PointerEventData eventData)
	{
		isDragging = false;
		NoteManager.Singleton.isDragging = false;

		if (!isAttached)
			transform.SetAsLastSibling ();
	}

	virtual protected void Update ()
	{
		if (!isDragging && !isAttached) {
			GetComponent<RectTransform> ().position += new Vector3 (velocity.x, velocity.y, 0) * Time.deltaTime;
			velocity *= .95f;
		}
	}

	virtual protected void Retract ()
	{
		GetComponent<RectTransform> ().DOKill (true);
		GetComponent<RectTransform> ().DOPunchScale (Vector3.one * .5f, .3f, 3);
		GetComponent<RectTransform> ().DOSizeDelta (smallSize, .2f).SetDelay (.1f).SetEase (Ease.OutExpo);
		foreach (GameObject GO in extend) {
			GO.transform.DOKill (true);
			GO.transform.DOScaleX (0, .1f).SetEase (Ease.OutExpo);
		}
	}

	virtual protected void Extend ()
	{
		GetComponent<RectTransform> ().DOKill (true);
		GetComponent<RectTransform> ().DOPunchScale (Vector3.one * .6f, .2f, 3);
		GetComponent<RectTransform> ().DOSizeDelta (bigSize, .3f).SetEase (Ease.InExpo);
		foreach (GameObject GO in extend) {
			GO.transform.DOKill (true);
			GO.transform.DOScaleX (1, .2f).SetDelay (.3f).SetEase (Ease.OutExpo);
		}
	}


	virtual public void OnHover ()
	{
		
//		transform.DOScale (Vector3.one * 1.2f, .3f).SetLoops (-1);
	}

	virtual public void OnUnhover ()
	{
//		transform.DOKill (true);
	}

	virtual public void Attach ()
	{
		isAttached = true;
		Extend ();
	}

	virtual protected void Start ()
	{
		Retract ();
	}
}
