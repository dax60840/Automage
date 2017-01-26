using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

using DG.Tweening;

// force
public class UIDragPoint : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IDropHandler
{
	public GameObject target;

	public GameObject Knob;
	// Use this for initialization
	void Start ()
	{

	}

	// Update is called once per frame
	void Update ()
	{

	}

	public void OnPointerEnter (PointerEventData eventData)
	{
		if (NoteManager.Singleton.isDragging) {
			eventData.pointerDrag.GetComponent<CodeComponent> ().OnHover ();

			target = eventData.pointerDrag;

			Knob.transform.DOKill (true);
			transform.parent.GetComponent<Image> ().DOKill (true);

			Knob.transform.DOScale (Vector3.one * 2f, .3f).SetEase (Ease.OutBounce);
			transform.parent.GetComponent<Image> ().DOFade (.5f, .3f);
		}
	}

	public void OnPointerExit (PointerEventData eventData)
	{
		if (target)
			target.GetComponent<CodeComponent> ().OnUnhover ();
		Knob.transform.DOKill (true);
		transform.parent.GetComponent<Image> ().DOKill (true);

		Knob.transform.DOScale (Vector3.one, .3f).SetEase (Ease.OutBounce);
		transform.parent.GetComponent<Image> ().DOFade (1f, .3f);
	}

	public void OnDrop (PointerEventData data)
	{
		if (data.pointerDrag != null) {
			data.pointerDrag.transform.SetParent (transform.parent.parent);
			data.pointerDrag.transform.SetAsLastSibling ();
			data.pointerDrag.GetComponent<CodeComponent> ().Attach ();
		}
		transform.parent.SetAsLastSibling ();
	}
}