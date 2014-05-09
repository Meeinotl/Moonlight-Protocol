#pragma strict

private var player : Vector3;
public var winup : GUITexture;
public var crosshairs : GUITexture;

function Start () 
{

}

function Update () 
{
	//Debug.Log(transform.position);
	//player = GameObject.Find("Moonlight Controller").transform.position;
	if (Input.GetButtonDown("Use") && Vector3.Distance(Flag.playerPos, transform.position) < 3)
	{
		//Debug.Log("Win!");
		winup.guiTexture.enabled = true;
		crosshairs.guiTexture.enabled = false;
	}
}