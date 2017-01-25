using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour {

    public List<AudioClip> SFXClips;

    private AudioSource _as;

    void Awake()
    {
        _as = GetComponent<AudioSource>();
    }
	
	public void PlayRandom()
    {
        _as.PlayOneShot(SFXClips[Random.Range(0, SFXClips.Count - 1)]);
    }
}
