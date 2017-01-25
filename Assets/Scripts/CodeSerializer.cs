using UnityEngine;

using System;
using System.Collections.Generic;
using Jurassic;
using Jurassic.Library;

public class CodeSerializer : MonoBehaviour
{
	public ScriptEngine engine;

	void Awake ()
	{

        PlayerController playerController = GameObject.Find("Player").GetComponent<PlayerController>();
		engine = new ScriptEngine ();
		engine.EnableExposedClrTypes = true;
        //engine.EnableDebugging = true;
        engine.ForceStrictMode = true;
        
		engine.SetGlobalValue ("Mathf", typeof(Mathf));
		engine.SetGlobalValue ("Input", typeof(Input));
		engine.SetGlobalValue ("Vector3", typeof(Vector3));
		engine.SetGlobalValue ("GameObject", typeof(GameObject));
		engine.SetGlobalValue ("Time", typeof(Time));
		engine.SetGlobalValue ("Color", typeof(Color));
		engine.SetGlobalValue ("Physics", typeof(Physics));
		engine.SetGlobalValue ("Player", playerController);
        engine.SetGlobalValue("Me", (object)this);

        //		engine.SetGlobalFunction ("setTimeout", new Action<Jurassic.Library.FunctionInstance, int> (setTimeout));
        //		engine.SetGlobalFunction ("setInterval", new Action<Jurassic.Library.FunctionInstance, int> (setInterval));
        engine.SetGlobalFunction ("log", new Action<string> (Debug.Log));
	}


	string GetLine (CodeComponent c)
	{
		string line = c.script.text;
		for (int j = 0; j <= c.values.Length - 1; j++) {
			line = line.Replace ("%" + j + "%", c.values [j].value);
		}
		return line;
	}

	void Start ()
	{
		transform.SetAsLastSibling ();
	}


	public void Execute ()
	{
		CodeComponent[] components = GetComponentsInChildren<CodeComponent> ();
		string code = "";
		string line = "";
		List<CodeComponent> registeredParents = new List<CodeComponent> ();
		for (int i = 0; i <= components.Length - 1; i++) {
			if (components [i].script != null) {

				CodeComponent[] parents = components [i].GetComponentsInParent<CodeComponent> ();
				// flush all if new line
				if (parents.Length == 1) {
					foreach (CodeComponent comp in registeredParents) {

						string lineFlushed = GetLine (comp);
						code += lineFlushed.Split (new string[]{ "%end%" }, StringSplitOptions.None) [1];
					}
					registeredParents.Clear ();
				}

				line = GetLine (components [i]);
				code += line.Split (new string[]{ "%end%" }, StringSplitOptions.None) [0];

				// flush parent's closing
				parents = components [i].GetComponentsInParent<CodeComponent> ();
				if (registeredParents.Count > 0 && parents.Length > 1) {
					Debug.Log ("----------");
					Debug.Log (components [i]);
					Debug.Log (parents [1] == registeredParents [registeredParents.Count - 1]);
					Debug.Log (components [i].transform.GetSiblingIndex () == (components [i].transform.parent.childCount - 1));
					Debug.Log (line.Split (new string[]{ "%end%" }, StringSplitOptions.None).Length == 1);
					if (parents [1] == registeredParents [registeredParents.Count - 1] &&
					    components [i].transform.GetSiblingIndex () == (components [i].transform.parent.childCount - 2) &&
					    line.Split (new string[]{ "%end%" }, StringSplitOptions.None).Length == 1) {

						Debug.Log ("flushing " + parents [1].name);
						string lineFlushed = GetLine (registeredParents [registeredParents.Count - 1]);
						code += lineFlushed.Split (new string[]{ "%end%" }, StringSplitOptions.None) [1];
						registeredParents.RemoveAt (registeredParents.Count - 1);

					}
				}

		

				// register if has an end
				if (line.Split (new string[]{ "%end%" }, StringSplitOptions.None).Length > 1) {
					registeredParents.Add (components [i]);
				}
			}
		}

		// flush last parent
		if (registeredParents.Count > 0) {
			foreach (CodeComponent comp in registeredParents) {

				string lineFlushed = GetLine (comp);
				code += lineFlushed.Split (new string[]{ "%end%" }, StringSplitOptions.None) [1];
			}
			registeredParents.Clear ();
		}

		Debug.Log (code);
		engine.Execute (code);
	}



	void Update ()
	{
//		engine.Execute (codeString);
	}
}