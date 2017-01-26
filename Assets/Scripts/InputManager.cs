using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using System;


public class BindedInput
{
	public Action action;
	public KeyCode code;

	public BindedInput (Action a, KeyCode c)
	{
		action = a;
		code = c;
	}
}

public class InputManager : MonoBehaviour
{
	private List<BindedInput> bindings = new List<BindedInput> ();
	// Use this for initialization

	private Action bindNext = null;

	private Action<string, int> onBindedNext;

	public enum InputBindingMode
	{
		Hold,
		Switch
	}

	public void bind (Action a, Action<string, int> b)
	{
		bindNext = a;
		onBindedNext = b;
	}

	public void unbind (int index)
	{
		bindings.RemoveAt (index);
	}

	// Update is called once per frame
	void Update ()
	{
		System.Array values = System.Enum.GetValues (typeof(KeyCode));
		foreach (KeyCode code in values) {

			if (Input.GetKeyDown (code)) {
				if (bindNext != null) {
					BindedInput newBindedInput = new BindedInput (bindNext, code);
					bindings.Add (newBindedInput);
					onBindedNext (code.ToString (), bindings.IndexOf (newBindedInput));

					bindNext = null;
				}

				for (int i = 0; i <= bindings.Count - 1; i++) {
					if (bindings [i].code == code) {
						bindings [i].action ();
					}
				}
			} 
		}
	}
}
