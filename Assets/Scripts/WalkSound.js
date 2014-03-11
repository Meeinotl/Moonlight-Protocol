#pragma strict

function Start () 
{
}

function Update () 
{
	if ((Input.GetButtonDown("Horizontal") || Input.GetButtonDown("Vertical")) && !audio.isPlaying)
	//if ((Input.GetButton("Horizontal") || Input.GetButton("Vertical")) && !audio.isPlaying)
	{
		audio.Play();
		//Debug.Log("go");
		//audio.loop = true;
	}
	
	if ((Input.GetButtonUp("Horizontal") && !Input.GetButtonDown("Vertical")))
	//if ((Input.GetButton("Horizontal") && !Input.GetButton("Vertical")))
	{
		audio.Stop();
		//Debug.Log("stop!");
		//audio.loop = false;
	}
}