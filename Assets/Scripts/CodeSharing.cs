using System.Collections;
using System.Linq;
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.IO;

[Serializable]
public class SerializedNode
{
	public string type;
	public string[] parameters;
	public List<SerializedNode> nexts = new List<SerializedNode> ();

	public SerializedNode (string t, string[] p)
	{
		type = t;
		parameters = p;
	}
}

[Serializable]
public class SerializedScript
{
	public string name;
	public string key;
	public SerializedNode[] nodes;

	public SerializedScript (string na, string k, SerializedNode[] n)
	{
		name = na;
		key = k;
		nodes = n;
	}
}

[Serializable]
public class Scripts
{
	public List<SerializedScript> scripts = new List<SerializedScript> ();
}


public class CodeSharing : MonoBehaviour
{
	private Dictionary<CodeComponent, SerializedNode> componentToNode = new Dictionary<CodeComponent, SerializedNode> ();
	// Use this for initialization
	void Start ()
	{
		Invoke ("Save", 10f);
	}


	void Save ()
	{
		

		CodeSerializer[] allSerializers = GetComponentsInChildren<CodeSerializer> ();
		CodeSerializer[] serializers = allSerializers.Skip (1).ToArray ();
		Scripts scripts = new Scripts ();
		foreach (CodeSerializer serializer in serializers) {

			List<CodeComponent> killList = new List<CodeComponent> ();

			CodeComponent[] codes = serializer.GetComponentsInChildren<CodeComponent> ();
			foreach (CodeComponent code in codes) {

				List<string> values = new List<string> ();
				foreach (CodeValue v in code.values) {
					values.Add (v.GetComponent <Text> ().text);
				}

				componentToNode.Add (code, new SerializedNode (code.name, values.ToArray ()));
			}

			foreach (KeyValuePair<CodeComponent, SerializedNode> entry in componentToNode) {
				CodeComponent parent;
				CodeComponent[] codesInParent = entry.Key.GetComponentsInParent<CodeComponent> ();
				if (codesInParent.Length > 1) {
					// is linked

					parent = codesInParent [1];

					killList.Add (entry.Key);
					componentToNode [parent].nexts.Add (entry.Value);
					Debug.Log (entry.Key.name + " slaved by " + parent.name);
				}
			}

			Dictionary<CodeComponent, SerializedNode> finalDic = componentToNode.ToDictionary (entry => entry.Key,
				                                                     entry => entry.Value);

			foreach (CodeComponent killed in killList) {
				finalDic.Remove (killed);
			}

			SerializedScript script = new SerializedScript (serializer.GetComponentInParent<ScriptUI> ().GetComponentsInChildren<InputField> () [0].text, serializer.GetComponentInParent<ScriptUI> ().GetComponentsInChildren<InputField> () [1].text, finalDic.Values.ToArray ());

			// LOAD
//			string json = File.ReadAllText (GameManager.Singleton.dir + "/" + GameManager.Singleton.LevelsDir + "/" + GameManager.Singleton.level + ".json");
//			LevelObject myLevel = JsonUtility.FromJson<LevelObject> (json);
			scripts.scripts.Add (script);
		}

		string scriptsJson = JsonUtility.ToJson (scripts);
		Debug.Log (Application.persistentDataPath + "/saves/" + UnityEngine.Random.Range (1000000, 9999999) + ".json");
		File.WriteAllText (Application.persistentDataPath + "/saves/" + UnityEngine.Random.Range (1000000, 9999999) + ".json", scriptsJson);
	}

	// Update is called once per frame
	void Update ()
	{
		
	}
}
