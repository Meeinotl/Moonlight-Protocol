﻿#pragma strict

public var locked = true;
public var main : Camera;
public var gun : Camera;
public var mini : Camera;
public var board : GameObject;
public var door : GameObject;

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
		main.enabled = true;
		gun.enabled = true;
		mini.enabled = false;
		board.gameObject.SetActive(false);
		player.GetComponent(FPSInputController).enabled = true;
		player.GetComponent(CharacterMotor).enabled = true;
		player.GetComponent(MouseLook).enabled = true;
		crosshairs.GetComponent(GUITexture).enabled = true;
	}
	if (Input.GetButtonDown("Use") && Vector3.Distance(transform.position, Flag.playerPos) < 2)
	{
		if (locked)
		{
			main.enabled = false;
			gun.enabled = false;
			mini.enabled = true;
			board.gameObject.SetActive(true);
			player.GetComponent(FPSInputController).enabled = false;
			player.GetComponent(CharacterMotor).enabled = false;
			player.GetComponent(MouseLook).enabled = false;
			crosshairs.GetComponent(GUITexture).enabled = false;
			flag.GetComponent(Flag).tutorial = true;
			flag.GetComponent(Flag).miniGame = true;
			
		}
		else
		{
			// open the door
			GameObject.Destroy(door);
		}	
	}
}