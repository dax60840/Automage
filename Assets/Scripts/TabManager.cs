using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TabManager : MonoBehaviour
{
	public GameObject Reference;

    public int index;

    public static TabManager Singleton;

    public Dictionary<int, Tab> tabs = new Dictionary<int, Tab>();

    void Awake()
    {
        if(TabManager.Singleton == null)
        {
            TabManager.Singleton = this;
        }else
        {
            Destroy(TabManager.Singleton);
        }
    }
	// Use this for initialization
	void Start ()
	{
		AddMajorTab ();
		AddTab ();
		AddTab ();
		AddTab ();
		AddTab ();
		AddTab ();
		AddTab ();
//		for (int i = 0; i <= 12; i++) {
//		}
	}

	void AddTab ()
	{
		GameObject obj = Instantiate (Reference, transform.position, Quaternion.Euler (0, 0, -87f), transform) as GameObject;
		obj.SetActive (true);
		obj.transform.position += obj.transform.right * transform.childCount * Screen.height * .06f;
		obj.transform.localScale = Vector3.one * .6f;
		obj.GetComponent<Tab> ().order = obj.transform.GetSiblingIndex ();
        tabs.Add(obj.GetComponent<Tab>().order, obj.GetComponent<Tab>());
	}

	void AddMajorTab ()
	{
		GameObject obj = Instantiate (Reference, transform.position, Quaternion.Euler (0, 0, -87f), transform) as GameObject;
		obj.SetActive (true);
		obj.transform.position += obj.transform.right * transform.childCount * Screen.height * .06f;
		obj.transform.localScale = Vector3.one * .6f;
		obj.GetComponent<Tab> ().order = obj.transform.GetSiblingIndex ();


		obj.GetComponent<Tab> ().isMaster = true;
        tabs.Add(obj.GetComponent<Tab>().order, obj.GetComponent<Tab>());
    }

	// Update is called once per frame
	void Update ()
	{
	}
}
