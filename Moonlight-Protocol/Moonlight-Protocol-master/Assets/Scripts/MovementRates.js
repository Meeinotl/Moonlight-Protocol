#pragma strict

public var sprintSpeed = 9;
public var normalSpeed = 6;
public var crouchSpeed = 3;
//public static var sprint = false;
private var chMotor : CharacterMotor;

function Start () 
{
	chMotor = GetComponent(CharacterMotor);
	chMotor.movement.maxForwardSpeed = normalSpeed;
	chMotor.movement.maxSidewaysSpeed = normalSpeed;
	chMotor.movement.maxBackwardsSpeed = normalSpeed;
}

function Update () 
{
	var crouched = Crouch.crouched;
	//Debug.Log(crouched);
	/*
	Debug.Log("Sprint " + sprint);
	if (!crouched)
	{
		if (Input.GetButtonDown("Sprint") && !sprint)
		{
			//Debug.Log("Sprinting");
			sprint = true;
		}
		else if (Input.GetButtonDown("Sprint") && sprint)
		{
			//Debug.Log("Not Sprinting");
			sprint = false;
		}
	}
	*/
	
	if (crouched)
	{
		chMotor.movement.maxForwardSpeed = crouchSpeed;
		chMotor.movement.maxSidewaysSpeed = crouchSpeed;
		chMotor.movement.maxBackwardsSpeed = crouchSpeed;
		//Debug.Log(chMotor.movement.maxForwardSpeed);
		//sprint = false;
	}
	/*
	else if (sprint)
	{
		chMotor.movement.maxForwardSpeed = sprintSpeed;
		chMotor.movement.maxSidewaysSpeed = sprintSpeed;
		chMotor.movement.maxBackwardsSpeed = sprintSpeed;
		sprint = true;
		//Debug.Log(chMotor.movement.maxForwardSpeed);
		//Debug.Log("Run");
	}
	*/
	else
	{
		chMotor.movement.maxForwardSpeed = normalSpeed;
		chMotor.movement.maxSidewaysSpeed = normalSpeed;
		chMotor.movement.maxBackwardsSpeed = normalSpeed;
		//Debug.Log(chMotor.movement.maxForwardSpeed);
	}
	
	
	
}