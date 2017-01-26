using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour {

    public bool active;

    public GameObject mob;
    public int maxMobs;
    public float spawnTime;

    private float _timeStamp;
    private int _instantiateMobs;
	
    void Start()
    {
        active = false;
        _timeStamp = 0;
        Stop();
    }
	

	void Update () {
		if(_timeStamp < Time.time && _instantiateMobs < maxMobs)
        {
            Instantiate(mob, transform.position, Quaternion.identity);
            _instantiateMobs++;
            _timeStamp = Time.time + spawnTime;
        }
	}

    public void Reset()
    {
        active = true;
        _instantiateMobs = 0;
        _timeStamp = Time.time + spawnTime;
    }

    public void Stop()
    {
        active = false;
        _instantiateMobs = maxMobs + 1;
    }
}
