using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class DragItem : MonoBehaviour, IDragHandler,  IBeginDragHandler, IEndDragHandler
{
	public GameObject target;
	private Vector2 offset;
	public Vector2 velocity;
	private Vector2 lastPos;
	private bool isDragging;

	private float maxHeight;
	public float minHeight;

	void Start ()
	{
		maxHeight = target.GetComponent<RectTransform> ().position.y;
		minHeight = -target.GetComponent<RectTransform> ().sizeDelta.y * .3f;
	}

	virtual public void OnDrag (PointerEventData eventData)
	{
		target.GetComponent<RectTransform> ().position = new Vector2 (target.GetComponent<RectTransform> ().position.x, Mathf.Max (minHeight, Mathf.Min ((eventData.position + offset).y, maxHeight)));

		Vector2 pos = new Vector2 (target.GetComponent<RectTransform> ().position.x, target.GetComponent<RectTransform> ().position.y);
		velocity = (pos - lastPos) * 5f;
		lastPos = pos;

	}

	virtual public void OnBeginDrag (PointerEventData eventData)
	{
		Vector2 pos = new Vector2 (target.GetComponent<RectTransform> ().position.x, target.GetComponent<RectTransform> ().position.y);
		offset = (pos - eventData.position);

		isDragging = true;
	}

	virtual public void OnEndDrag (PointerEventData eventData)
	{
		isDragging = false;
	}

	virtual protected void Update ()
	{
		if (!isDragging) {
			target.GetComponent<RectTransform> ().position += new Vector3 (0, velocity.y, 0) * Time.deltaTime;

			target.GetComponent<RectTransform> ().position = new Vector2 (target.GetComponent<RectTransform> ().position.x, Mathf.Max (minHeight, Mathf.Min (target.GetComponent<RectTransform> ().position.y, maxHeight)));

			velocity *= .99f;
		}
	}
}
