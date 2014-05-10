#pragma strict

public var cam : Camera;

function Start () 
{
	guiTexture.pixelInset = Rect(cam.pixelWidth / 6, - cam.pixelHeight / 2, cam.pixelWidth / 3, cam.pixelHeight);
}

function Update () 
{
	
}