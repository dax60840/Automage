using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AudioManager : MonoBehaviour {
    
    public float MusicVolume
    {
        get { return _as_music.volume; }
        set { _as_music.volume = value; }
    }

    public float SfxVolume
    {
        get { return _as_event.volume; }
        set {
            _as_event.volume = value;
            _as_pitched.volume = value;
        }
    }

    public List<AudioClip> SFXClips = new List<AudioClip>();
    public List<AudioClip> MusicClips = new List<AudioClip>();

    public bool Loop
    {
        get { return _as_event.loop; }
        set { _as_event.loop = value; }
    }

    public NavMeshAgent walkingAgent;

    private List<AudioClip> _craftSFX = new List<AudioClip>();
    private List<AudioClip> _birdSFX = new List<AudioClip>();
    private List<AudioClip> _footStepSFX = new List<AudioClip>();

    private AudioSource _as_event;
    private AudioSource _as_pitched;
    private AudioSource _as_music;
    private bool _walking;

    void Start()
    {
        _walking = false;
        _as_event = GetComponent<AudioSource>();
        _as_pitched = gameObject.AddComponent<AudioSource>();
        _as_music = gameObject.AddComponent<AudioSource>();

        foreach (AudioClip ac in SFXClips)
        {
            if (ac.name.Contains("craft"))
            {
                _craftSFX.Add(ac);
            }

            if (ac.name.Contains("bird"))
            {
                _birdSFX.Add(ac);
            }

            if (ac.name.Contains("footstep_wool_"))
            {
                _footStepSFX.Add(ac);
            }
        }

        MusicVolume = 0.5f;
        _as_music.loop = true;
        _as_music.clip = MusicClips[0];
        _as_music.Play();
    }

    void Update()
    {
        if (_walking && !_as_pitched.isPlaying)
        {
            PlayFootStep();
        }
    }

    public void PlayFootStep()
    {
        PlayRandom(_footStepSFX, true);
    }

    public void Stop()
    {
        _walking = false;
        _as_event.Stop();
    }

    public void PlayCraftSFX()
    {
        PlayRandom(_craftSFX);
    }

    public void PlayVoiceSFX()
    {
        PlayRandom(_birdSFX);
    }

    public void PlayRandom(List<AudioClip> list, bool randPitch = false, float volume = 1)
    {
        if (!randPitch)
        {
            _as_event.PlayOneShot(list[Random.Range(0, list.Count)]);
        }else
        {
            _walking = true;
            PlayPitched(list[Random.Range(0, list.Count)]);
        }
    }

    public void PlayPitched(AudioClip ac)
    {
        _as_pitched.pitch = Random.Range(0.85f, 1.15f);
        _as_pitched.PlayOneShot(ac, walkingAgent.velocity.magnitude/walkingAgent.speed);
    }

    public void Play(string fileName)
    {
        for(int i = 0; i < SFXClips.Count - 1; i++)
        {
            if(SFXClips[i].name == fileName)
            {
                _as_event.clip = SFXClips[i];
                _as_event.Play();
                return;
            }
        }
    }
}
