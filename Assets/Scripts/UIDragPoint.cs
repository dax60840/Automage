using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

using DG.Tweening;

// force
public class UIDragPoint : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IDropHandler
{
    private AudioManager _am;

	// Use this for initialization
	void Start ()
	{
        _am = FindObjectOfType<AudioManager>();
	}
	
	// Update is called once per frame
	void Update ()
	{
		
	}

	public void OnPointerEnter (PointerEventData eventData)
	{
		if (NoteManager.Singleton.isDragging) {
			transform.DOKill (true);
			transform.GetComponent<Image> ().DOKill (true);

			transform.DOScale (Vector3.one * 2f, .3f).SetEase (Ease.OutBounce);
			transform.GetComponent<Image> ().DOFade (.5f, .3f);
		}
	}

	public void OnPointerExit (PointerEventData eventData)
	{
		transform.DOKill (true);
		transform.GetComponent<Image> ().DOKill (true);

		transform.DOScale (Vector3.one, .3f).SetEase (Ease.OutBounce);
		transform.GetComponent<Image> ().DOFade (1f, .3f);
	}

	public void OnDrop (PointerEventData data)
	{
		if (data.pointerDrag != null) {
			data.pointerDrag.GetComponent<CodeComponent> ().isAttached = true;
			data.pointerDrag.transform.SetParent (transform.parent.parent);
			data.pointerDrag.transform.SetAsLastSibling ();
            _am.Play("block_connected");   
		}
		transform.parent.SetAsLastSibling ();
	}
}