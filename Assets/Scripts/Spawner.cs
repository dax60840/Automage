using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour {

    public GameObject mob;
    public int maxMobs;
    public float spawnTime;

    private float _timeStamp;
    private int _instantiateMobs;
	
    void Start()
    {
        _timeStamp = Time.time + spawnTime;
    }
	

	void Update () {
		if(_timeStamp < Time.time && _instantiateMobs < maxMobs)
        {
            Instantiate(mob);
            _instantiateMobs++;
            _timeStamp = Time.time + spawnTime;
        }
	}
}
