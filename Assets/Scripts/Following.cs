using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Following : MonoBehaviour
{

	GameObject Player;
	Camera cam;

	public float distance = 11;
	private float lastDistance = 11;
	// Use this for initialization
	void Start ()
	{
		Player = GameObject.Find ("Player");
		cam = GetComponentInChildren<Camera> ();
	}
	
	// Update is called once per frame
	void LateUpdate ()
	{
		transform.position = Vector3.Lerp (transform.position, Player.transform.position, Time.deltaTime);

		if (lastDistance != distance) {
			cam.transform.DOKill (true);
			cam.transform.DOLocalMove (new Vector3 (0, distance * .3f, -distance * .7f), .5f).SetEase (Ease.OutExpo);
			lastDistance = distance;
		}
	}
}
