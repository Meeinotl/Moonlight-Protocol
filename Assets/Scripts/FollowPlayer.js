#pragma strict

private var agent : NavMeshAgent;
private var player : Vector3;
private var target : Vector3;

function Start () 
{
	agent = GetComponent.<NavMeshAgent>();
}

function Update () 
{
	player = GameObject.Find("Moonlight Controller").transform.position;
	// 20 view distance on a plane
	if (Vector3.Distance(player, this.transform.position) < 20 && Mathf.Abs(player.y - this.transform.position.y) < 2)
	{
		GetComponent(Animator).SetBool("Walk", true);
		agent.SetDestination(player);
		audio.Play();
		target = player;
		if (Vector3.Distance(this.transform.position, target) < 3)
		{
			this.transform.LookAt(player);
			agent.SetDestination(this.transform.position);
			GetComponent(Animator).SetBool("Walk", false);
			audio.Stop();
		}
		
	}

	// don't get too close
	/**else if (Vector3.Distance(this.transform.position, target) < 5)
	{
		agent.SetDestination(this.transform.position);
		GetComponent(Animator).SetBool("Walk", false);
		audio.Stop();
	}**/
}