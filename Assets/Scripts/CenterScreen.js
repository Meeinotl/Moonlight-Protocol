#pragma strict

public var width = 1024;
public var height = 512;
public var cam : Camera;

function Start () 
{
	transform.position = Vector3.zero;
	transform.localScale = Vector3.zero;
	guiTexture.pixelInset = Rect(cam.pixelWidth / 2 - width / 2, cam.pixelHeight / 2 - height / 2, width, height);
}

function Update () 
{

}