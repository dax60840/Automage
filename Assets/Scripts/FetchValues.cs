using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;
using System.Reflection;

[Serializable]
public class FieldValue
{
	public string title;
	public string valueName;
	public float min;
	public float max;
	[HideInInspector]
	public PropertyInfo info;
}

public class FetchValues : MonoBehaviour
{
	public GameObject Target;
	public string Component;
	// Use this for initialization
	void Start ()
	{
		Component c = Target.GetComponent (Component);
		System.Reflection.PropertyInfo[] fields = c.GetType ().GetProperties ();
		for (int k = 0; k <= fields.Length - 1; k++) {
			if (fields [k].GetCustomAttributes (typeof(Tweakable), true).Length == 1) {
				foreach (FieldValue f in Target.GetComponent<PlayerController>().tweakableValues) {
					if (f.valueName == fields [k].Name) {
						f.info = fields [k];
						GetComponent<Dropdown> ().AddOptions (new List<string> (){ f.title });
					}
//					Debug.Log (c.GetType ().GetProperty (f.valueName).GetValue (c, new object[0]));
				}
			}
		}
	
	}
	
	// Update is called once per frame
	void Update ()
	{
		
	}
}
