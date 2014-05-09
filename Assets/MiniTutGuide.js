#pragma strict

public var cam : Camera;

function Start () 
{
	
}

function Update () 
{
	guiTexture.pixelInset = Rect(0, cam.pixelHeight + cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
}