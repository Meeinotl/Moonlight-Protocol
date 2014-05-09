#pragma strict

public var miniGame : boolean = false;
public var tutorial : boolean = true;
public static var sprint : boolean = false;
public static var crouch : boolean = false;

public static var guardAccuracy = 70;
public static var shootHear = 50;
public static var sprintHear = 20;
public static var walkHear = 10;
public static var crouchHear = 5;

public static var playerPos : Vector3;//= GameObject.Find("Moonlight Controller").transform.position;

function Start () 
{
	Application.targetFrameRate = 60;
	Screen.showCursor = false;
 	Screen.lockCursor = true;
 	/*
 	if (!Screen.fullScreen)
 	{
 		Screen.fullScreen = true;
 	}
 	*/
}

function Update () 
{
	playerPos = GameObject.Find("Moonlight Controller").transform.position;
	//Debug.Log(playerPos);
}