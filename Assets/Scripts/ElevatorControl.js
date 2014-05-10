#pragma strict

public var locked = true;
public var main : Camera;
public var gun : Camera;
public var mini : Camera;
public var board : GameObject;
public var guide : GUITexture;

private var player : GameObject;
private var flag : GameObject;
private var crosshairs : GameObject;

function Start () 
{
	player = GameObject.Find("Moonlight Controller");
	flag = GameObject.Find("FlagBearer");
	crosshairs = GameObject.Find("Crosshairs");
}

function Update () 
{
	if (flag.GetComponent(Flag).miniGame == false)
	{
		main.gameObject.SetActive(true);
		mini.gameObject.SetActive(false);
		board.gameObject.SetActive(false);
		player.GetComponent(FPSInputController).enabled = true;
		player.GetComponent(CharacterMotor).enabled = true;
		player.GetComponent(MouseLook).enabled = true;
		crosshairs.GetComponent(GUITexture).enabled = true;
		guide.enabled = false;
	}
	if (Input.GetButtonDown("Use") && Vector3.Distance(transform.position, Flag.playerPos) < 2)
	{
		if (locked)
		{
			main.gameObject.SetActive(false);
			mini.gameObject.SetActive(true);
			board.gameObject.SetActive(true);
			player.GetComponent(FPSInputController).enabled = false;
			player.GetComponent(CharacterMotor).enabled = false;
			player.GetComponent(MouseLook).enabled = false;
			crosshairs.GetComponent(GUITexture).enabled = false;
			flag.GetComponent(Flag).miniGame = true;
			guide.enabled = true;
		}
	}
}

function Unlock()
{
	Application.LoadLevel(1);
}