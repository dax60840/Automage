using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using DG.Tweening;

public class Tab : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{

	public int order;

	public GameObject script;
	private InputField name;

	private bool isOver = false;
	private float timing = 0;

	private GameObject target;
	// Use this for initialization
	void Start ()
	{
		script = Instantiate (script, script.transform.parent) as GameObject;
		name = script.GetComponentInChildren<InputField> ();
		name.onValueChanged.AddListener ((text) => {
			GetComponentInChildren<Text> ().text = text;
		});
	}

	public void Repos ()
	{
		transform.SetSiblingIndex (order);
	}

	public void OnClick ()
	{
		Open ();
	}

	void Open ()
	{
		foreach (Transform t in script.transform.parent) {
			if (t.localScale.magnitude > .2f) {
				t.DOKill (true);
				t.DOScale (Vector3.zero, .3f).SetEase (Ease.InElastic);
			}
		}
		script.transform.DOScale (Vector3.one, .3f).SetDelay (.2f).SetEase (Ease.OutElastic);
	}

	public void OnPointerEnter (PointerEventData eventData)
	{
		if (NoteManager.Singleton.isDragging) {
			target = eventData.pointerDrag;

			transform.GetComponent<Image> ().DOKill (true);
			transform.GetComponent<Image> ().DOFade (.5f, .3f);
			timing = 0;
			isOver = true;
		}
	}

	public void OnPointerExit (PointerEventData eventData)
	{
		transform.GetComponent<Image> ().DOKill (true);
		transform.GetComponent<Image> ().DOFade (1f, .3f);
		timing = 0;
		isOver = false;
	}

	void Update ()
	{
		if (isOver) {
			timing += Time.deltaTime;

			if (timing > .8f) {
				timing = 0;
				Open ();
				if (target.GetComponent<CodeComponent> ()) {
					target.transform.SetParent (script.GetComponentInChildren<NoteParent> ().transform);
					target.transform.SetAsFirstSibling ();
				}
			}
		}
	}

}
