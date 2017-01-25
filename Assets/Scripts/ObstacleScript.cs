using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleScript : BuildableObject {

    public int health;
    public int max_health;
    public int attack;

    private Renderer _rend;
    private float _timehurt;
    private float _timeStampHurt;

    void Start()
    {
        _timehurt = 0.2f;
        _rend = GetComponent<Renderer>();
    }

	void Update () {
        if (max_health <= 0)
        {
            Destroy(gameObject);
        }

        if(_timeStampHurt < Time.time)
        {
            _rend.material.color = Color.white;
        }
        
	}

    public int Damage(int value)
    {
        _rend.material.color = Color.red;
        _timeStampHurt = Time.time + _timehurt;
        health -= value;
        return health;
    }
}
