using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.AI;

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
                TransitionToNight();
            }
            else
            {
                TransitionToDay();
            }
        }
	}

    void TransitionToNight()
    {
        directional.transform.DORotate(new Vector3(nightAxis, directional.transform.rotation.y, directional.transform.rotation.z), dayToNight).OnComplete(
            () =>
            {
                NavMeshObstacleEnabled(true);
                SpawnerEnabled(true);
            });
        day = false;
        _timeStamp = Time.time + nightDuration;
        _am.SwitchMusic(day, dayToNight);
    }

    void TransitionToDay()
    {
        directional.transform.DORotate(new Vector3(dayAxis, directional.transform.rotation.y, directional.transform.rotation.z), nightToDay);
        _timeStamp = Time.time + dayDuration;
        day = true;
        _am.SwitchMusic(day, nightToDay);
        NavMeshObstacleEnabled(false);
        SpawnerEnabled(false);
        EnemyExit();

    }

    void NavMeshObstacleEnabled(bool value)
    {
        NavMeshObstacle[] obstacles = FindObjectsOfType<NavMeshObstacle>();

        if (obstacles != null)
        {
            for (int i = 0; i < obstacles.Length - 1; i++)
            {
                obstacles[i].enabled = value;
            }
        }
    }

    void EnemyExit()
    {
        EnemyBehavior[] enemies = FindObjectsOfType<EnemyBehavior>();

        if (enemies != null)
        {
            for (int i = 0; i < enemies.Length - 1; i++)
            {
                enemies[i].Exit();
            }
        }
    }

    void SpawnerEnabled(bool value)
    {
        Spawner[] spawners = FindObjectsOfType<Spawner>();

        if(spawners != null)
        {
            for (int i = 0; i < spawners.Length; i++)
            {
                Debug.Log(spawners[i].name);
                if (value)
                {
                    spawners[i].Reset();
                }else
                {
                    spawners[i].Stop();
                }
            }
        }
    }
}
