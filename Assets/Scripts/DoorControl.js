#pragma strict

public var locked = true;
public var main : Camera;
public var gun : Camera;
public var mini : Camera;
public var board : GameObject;
public var door : GameObject;

function Start () 
{

}

function Update () 
{
	if (GameObject.Find("FlagBearer").GetComponent(Flag).miniGame == false)
	{
		main.enabled = true;
		gun.enabled = true;
		mini.enabled = false;
		//board.GetComponent(Minigame).enabled = false;
		//board.GetComponent(FlipBoard).enabled = false;
		GameObject.Find("Moonlight Controller").GetComponent(FPSInputController).enabled = true;
		GameObject.Find("Moonlight Controller").GetComponent(CharacterMotor).enabled = true;
		GameObject.Find("Moonlight Controller").GetComponent(MouseLook).enabled = true;
		GameObject.Find("Crosshairs").GetComponent(GUITexture).enabled = true;
	}
	if (Input.GetButtonDown("Use") && Vector3.Distance(transform.position, Flag.playerPos) < 2)
	{
		if (locked)
		{
			main.enabled = false;
			//gun.enabled = false;
			mini.enabled = true;
			//board.GetComponent(Minigame).enabled = false;
			//board.GetComponent(FlipBoard).enabled = false;
			GameObject.Find("Moonlight Controller").GetComponent(FPSInputController).enabled = false;
			GameObject.Find("Moonlight Controller").GetComponent(CharacterMotor).enabled = false;
			GameObject.Find("Moonlight Controller").GetComponent(MouseLook).enabled = false;
			GameObject.Find("Crosshairs").GetComponent(GUITexture).enabled = false;
			GameObject.Find("FlagBearer").GetComponent(Flag).tutorial = true;
			GameObject.Find("FlagBearer").GetComponent(Flag).miniGame = true;
			
		}
		else
		{
			// open the door
		}	
	}
}