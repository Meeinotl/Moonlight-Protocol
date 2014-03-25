#pragma strict

function Start () 
{

}

function Update () 
{
	if (Input.GetButtonDown("Use") && Vector3.Distance(GetComponent(Transform).position, GameObject.Find("First Person Controller").transform.position) < 3)
	{
		
		GetComponent(Animator).SetBool("Open", true);
	}
}