#pragma strict

private var agent : NavMeshAgent;
private var player : Vector3;
private var target : Vector3;
private var lastPos : Vector3;
//public var sprintHear = 20;
public var walkHear = 10;
public var crouchHear = 5;

function Start () 
{
	agent = GetComponent.<NavMeshAgent>();
}

function Update () 
{
	player = GameObject.Find("Moonlight Controller").transform.position;
	var dist = Vector3.Distance(player, transform.position);

	//Debug.Log("dist " + dist);
	// 20 sprint, 10 walking, 5 crouched
	//Debug.Log("On Plane = " + OnPlane());
	if (!Tutorial.tutorial && OnPlane())
	{
		if ((dist < 50 && TriggerGun.firing) ||
			//(CharMoved() && (dist < sprintHear) && MovementRates.sprint) ||
			(CharMoved() && (dist < walkHear)) ||// && !MovementRates.sprint) ||
			(CharMoved() && (dist < crouchHear) && Crouch.crouched))
		{
			GetComponent(Animator).SetBool("Walk", true);
			agent.SetDestination(player);
			if (!audio.isPlaying)
			{
				audio.Play();
			}
			target = player;
			// stop and look at the player when they're close
			// or at least don't bump into each other at the target spot
			if (Vector3.Distance(transform.position, target) < 3)
			{
				this.transform.LookAt(target);
				agent.SetDestination(transform.position);
				GetComponent(Animator).SetBool("Walk", false);
				audio.Stop();
			}
		}
	}
}

function OnPlane(): boolean
{
	return Mathf.Abs(player.y - this.transform.position.y) < 2;
}

function CharMoved(): boolean 
{
  var displacement = Vector3.Distance(lastPos, player);
  //player = GameObject.Find("Moonlight Controller").transform.position;
  lastPos = GameObject.Find("Moonlight Controller").transform.position;
  //Debug.Log(displacement);
  return displacement > 0.001;
}