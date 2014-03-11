#pragma strict

function Start () 
{

}

function Update () 
{
	if (Input.GetKey("k"))
	{
		//Debug.Log(this.GetComponent(ParticleEmitter).enabled);
		this.GetComponent(ParticleSystem).Stop();
	}
	if (Input.GetKey("p"))
	{
		this.GetComponent(ParticleSystem).Play();
	}
}