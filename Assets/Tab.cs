using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using DG.Tweening;

public class Tab : MonoBehaviour
{

	public int order;

	public GameObject script;
	private InputField name;
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
		foreach (Transform t in script.transform.parent) {
			if (t.localScale.magnitude > .2f) {
				t.DOKill (true);
				t.DOScale (Vector3.zero, .3f).SetEase (Ease.InElastic);
			}
		}
		script.transform.DOScale (Vector3.one, .3f).SetDelay (.2f).SetEase (Ease.OutElastic);
	}

	// Update is called once per frame
	void Update ()
	{
		
	}
}
