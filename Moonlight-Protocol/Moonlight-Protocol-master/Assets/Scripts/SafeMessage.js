#pragma strict

function Start () {
guiTexture.enabled = false;
}

function Update ()
{
	guiTexture.enabled = Tutorial.tutorial;
}