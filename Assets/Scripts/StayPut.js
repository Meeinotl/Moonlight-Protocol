#pragma strict

private var agent : NavMeshAgent;

function Start () 
{
	agent = GetComponent.<NavMeshAgent>();
	
	agent.SetDestination(this.transform.position);
}

function Update () 
{
	//agent.SetDestination(GameObject.Find("First Person Controller").transform.position);
}