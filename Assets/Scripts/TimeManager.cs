using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class TimeManager : MonoBehaviour {

    public bool day;

    public Light directional;

    public float dayDuration;
    public float nightDuration;

    public float dayToNight;
    public float nightToDay;

    public float dayAxis;
    public float nightAxis;

	private float _timeStamp;
    private AudioManager _am;


    void Start()
    {
        _am = FindObjectOfType<AudioManager>();
        day = true;
        _timeStamp = Time.time + dayDuration/2;

    }
	
	// Update is called once per frame
	void Update () {
		if(_timeStamp < Time.time)
        {
            if (day) {
                directional.transform.DORotate(new Vector3(nightAxis, directional.transform.rotation.y, directional.transform.rotation.z), dayToNight);
                _timeStamp = Time.time + nightDuration;
                day = false;
                _am.SwitchMusic(day, dayToNight);
            }
            else
            {
                directional.transform.DORotate(new Vector3(dayAxis, directional.transform.rotation.y, directional.transform.rotation.z), nightToDay);
                _timeStamp = Time.time + dayDuration;
                day = true;
                _am.SwitchMusic(day, nightToDay);
            }
        }
	}
}
