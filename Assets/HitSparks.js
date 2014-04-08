#pragma strict

function Start () 
{

}

function Update () 
{
	
}

function Hit()
{
	this.GetComponent(ParticleSystem).Play();
}