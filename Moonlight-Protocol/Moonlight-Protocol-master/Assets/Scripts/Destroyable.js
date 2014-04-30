#pragma strict

public var hp = 3;

function Start () {

}

function Update () 
{
	if (hp <= 0)
	{
		Destroy(this.gameObject);
		TriggerGun.firing = false;
		Tutorial.tutorial = false;
	}
}