using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthManager : MonoBehaviour
{

	public PlayerController player;

	public Text txt;
	public Image img;
	// Use this for initialization
	void Start ()
	{
		
	}
	
	// Update is called once per frame
	void Update ()
	{
		txt.text = player.Hunger + "";
		img.fillAmount = (player.Hunger / (player.maxHunger * 1f));
	}
}
