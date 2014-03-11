#pragma strict

private var agent : NavMeshAgent;

function Start () 
{
	agent = GetComponent.<NavMeshAgent>();
	agent.SetDestination(new Vector3(0, 0, 0));
}

function Update () 
{
	
	if (Vector3.Distance(transform.position, GameObject.Find("First Person Controller").transform.position) < 20)
	{
		agent.SetDestination(GameObject.Find("First Person Controller").transform.position);
	}
	else
	{
		agent.SetDestination(new Vector3(0, 0, 0));
	}
}