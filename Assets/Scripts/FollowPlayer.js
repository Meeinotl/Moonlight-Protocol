#pragma strict

private var agent : NavMeshAgent;
private var player : Vector3;
private var target : Vector3;
private var lastPos : Vector3;
public var dead = false;

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
	//Debug.Log("Move = " + CharMoved());
	if (dead)
	{
		agent.SetDestination(transform.position);
		GetComponent(Animator).SetBool("Walk", false);
	}
	else if (!GameObject.Find("FlagBearer").GetComponent(Flag).tutorial && OnPlane())
	{
		if ((dist < Flag.shootHear && TriggerGun.firing) ||
			(dist < Flag.sprintHear && Flag.sprint && CharMoved()) ||
			(dist < Flag.walkHear && !Flag.crouch && CharMoved()) ||
			(dist < Flag.crouchHear && CharMoved()))
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
			if (Vector3.Distance(transform.position, target) < 5)
			{
				this.transform.LookAt(target);
				agent.SetDestination(transform.position);
				GetComponent(Animator).SetBool("Walk", false);
				audio.Stop();
			}
		}
		if (target == player)
		{
			audio.Play();
		}
	}
}

function OnPlane(): boolean
{
	return Mathf.Abs(player.y - this.transform.position.y) < 3;
}

function CharMoved(): boolean 
{
	var displacement = Vector3.Distance(lastPos, player);
	//player = GameObject.Find("Moonlight Controller").transform.position;
	lastPos = GameObject.Find("Moonlight Controller").transform.position;
	//Debug.Log(displacement);
	return displacement > 0.001;
}

function Spot(pos : Vector3): void
{
	target = pos;
	agent.SetDestination(pos);
	GetComponent(Animator).SetBool("Walk", true);
}