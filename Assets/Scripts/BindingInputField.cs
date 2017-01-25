using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using DG.Tweening;

public class BindingInputField : MonoBehaviour
{
	public Action action;
	public int lastIndex = -1;

	public CodeSerializer Target;
	// Use this for initialization
	void Start ()
	{
//		transform.DOScaleY (0, 0);
	}

	public void OnSelect ()
	{
		GetComponent<InputField> ().text = "";
		action = () => {
			Target.Execute ();
		};
		GameObject.Find ("InputManager").GetComponent<InputManager> ().bind (action, refresh);

		if (lastIndex != -1) {
			GameObject.Find ("InputManager").GetComponent<InputManager> ().unbind (lastIndex);
		}
	}

	void refresh (string name, int index)
	{
		GetComponent<InputField> ().text = name.ToUpper ();
		lastIndex = index;
	}
}
