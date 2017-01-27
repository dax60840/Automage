using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class AllerAuPlusProche : MonoBehaviour {

	// Use this for initialization
	void Start () {
        EventTrigger trigger = GetComponent<EventTrigger>();
        EventTrigger.Entry entry = new EventTrigger.Entry();
        entry.eventID = EventTriggerType.PointerDown;
        PlayerController player = GameObject.Find("Player").GetComponent<PlayerController>();
        entry.callback.AddListener((eventData) => { player.ClickGameObject(GetComponentInChildren<Text>()); });
        trigger.triggers.Add(entry);
    }

}
