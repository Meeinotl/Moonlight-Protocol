#pragma strict

private var agent : NavMeshAgent;
private var player : Vector3;
private var target : Vector3;
private var lastPos : Vector3;

function Start () 
{
	agent = GetComponent.<NavMeshAgent>();
}

function Update () 
{
	player = GameObject.Find("Moonlight Controller").transform.position;
	var dist = Vector3.Distance(player, this.transform.position);

	//Debug.Log("dist " + dist);
	// 20 sprint, 10 walking, 5 crouched
	//Debug.Log("On Plane = " + OnPlane());
	if (OnPlane() && CharMoved())
	{
		if ((dist < 20 && MovementRates.sprint) ||
			(dist < 10 && !MovementRates.sprint) ||
			(dist < 5 && Crouch.crouched))
		{
			GetComponent(Animator).SetBool("Walk", true);
			agent.SetDestination(player);
			if (!audio.isPlaying)
			{
				audio.Play();
			}
			target = player;
			if (Vector3.Distance(this.transform.position, target) < 3)
			{
				this.transform.LookAt(target);
				agent.SetDestination(this.transform.position);
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