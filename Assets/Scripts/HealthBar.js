#pragma strict

public var cam : Camera;
public var h5 : GUITexture;
public var h4 : GUITexture;
public var h3 : GUITexture;
public var h2 : GUITexture;
public var h1 : GUITexture;
public var h0 : GUITexture;

function Start () 
{
	
}

function Update () 
{
	switch (PlayerDeath.hp)
		{
			case 0:
				Clear();
				h0.guiTexture.enabled = true;
				h0.guiTexture.pixelInset = Rect(- cam.pixelWidth / 2, - cam.pixelHeight / 2, cam.pixelWidth / 4, cam.pixelHeight / 4);
				break;
			case 1: 
				Clear();
				h1.guiTexture.enabled = true;
				h1.guiTexture.pixelInset = Rect(- cam.pixelWidth / 2, - cam.pixelHeight / 2, cam.pixelWidth / 4, cam.pixelHeight / 4);
				break;
			case 2:
				Clear();
				h2.guiTexture.enabled = true;
				h2.guiTexture.pixelInset = Rect(- cam.pixelWidth / 2, - cam.pixelHeight / 2, cam.pixelWidth / 4, cam.pixelHeight / 4);
				break;
			case 3:
				Clear();
				h3.guiTexture.enabled = true;
				h3.guiTexture.pixelInset = Rect(- cam.pixelWidth / 2, - cam.pixelHeight / 2, cam.pixelWidth / 4, cam.pixelHeight / 4);
				break;
			case 4:
				Clear();
				h4.guiTexture.enabled = true;
				h4.guiTexture.pixelInset = Rect(- cam.pixelWidth / 2, - cam.pixelHeight / 2, cam.pixelWidth / 4, cam.pixelHeight / 4);
				break;
			case 5:
				Clear();
				h5.guiTexture.enabled = true;
				h5.guiTexture.pixelInset = Rect(- cam.pixelWidth / 2, - cam.pixelHeight / 2, cam.pixelWidth / 4, cam.pixelHeight / 4);
				break;
		}
}

function Clear()
{
	h0.guiTexture.enabled = false;
	h1.guiTexture.enabled = false;
	h2.guiTexture.enabled = false;
	h3.guiTexture.enabled = false;
	h4.guiTexture.enabled = false;
	h5.guiTexture.enabled = false;
}