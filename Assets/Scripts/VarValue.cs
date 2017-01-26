using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class VarValue : CodeValue
{
	public PlayerController player;


	override public string value {
		get {
			//			for(int i =0)
			foreach (FieldValue f in player.tweakableValues) {
				if (f.title == GetComponent<Text> ().text) {
					return f.valueName;
				}
				//					Debug.Log (c.GetType ().GetProperty (f.valueName).GetValue (c, new object[0]));
			}

			return Value;
		}
		set {
			Value = value;
		}
	}
	// Use this for initialization
	void Start ()
	{
		player = GameObject.Find ("Player").GetComponent<PlayerController> ();
	}

	// Update is called once per frame
	void Update ()
	{

	}
}
