#pragma strict

function Start () {

}

function Update () 
{
	if (Input.GetButtonDown("Fire1"))
	{
		this.GetComponent(ParticleSystem).Emit(1);
	}
}