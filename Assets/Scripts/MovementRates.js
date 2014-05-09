#pragma strict

public var sprintSpeed = 9;
public var normalSpeed = 6;
public var crouchSpeed = 3;
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
	//Debug.Log(crouched);
	
	//Debug.Log("Sprint " + Flag.sprint);
	if (!Flag.crouch)
	{
		if (Input.GetButtonDown("Sprint") && !Flag.sprint)
		{
			//Debug.Log("Sprinting");
			Flag.sprint = true;
		}
		else if (Input.GetButtonDown("Sprint") && Flag.sprint)
		{
			//Debug.Log("Not Sprinting");
			Flag.sprint = false;
		}
	}
	
	
	if (Flag.crouch)
	{
		chMotor.movement.maxForwardSpeed = crouchSpeed;
		chMotor.movement.maxSidewaysSpeed = crouchSpeed;
		chMotor.movement.maxBackwardsSpeed = crouchSpeed;
		//Debug.Log(chMotor.movement.maxForwardSpeed);
		Flag.sprint = false;
	}
	
	else if (Flag.sprint)
	{
		chMotor.movement.maxForwardSpeed = sprintSpeed;
		chMotor.movement.maxSidewaysSpeed = sprintSpeed;
		chMotor.movement.maxBackwardsSpeed = sprintSpeed;
		//Debug.Log(chMotor.movement.maxForwardSpeed);
		//Debug.Log("Run");
	}
	
	else
	{
		chMotor.movement.maxForwardSpeed = normalSpeed;
		chMotor.movement.maxSidewaysSpeed = normalSpeed;
		chMotor.movement.maxBackwardsSpeed = normalSpeed;
		//Debug.Log(chMotor.movement.maxForwardSpeed);
	}
	
	
	
}