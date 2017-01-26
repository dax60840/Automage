using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class FloatValue : CodeValue
{
	public Text reference;
	public PlayerController player;


	override public string value {
		get {
//			for(int i =0)
			foreach (FieldValue f in player.tweakableValues) {
				if (f.title == reference.text) {
					if (GetComponent<Text> ().text == "Haute") {
						return "> " + (.75f * f.max + f.min);
					} else if (GetComponent<Text> ().text == "Moyenne") {
						return "> " + (.4f * f.max + f.min);
					} else {
						return "< " + (.4f * f.max + f.min);
					}
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
