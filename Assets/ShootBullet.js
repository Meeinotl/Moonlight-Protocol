#pragma strict

var bullet: GameObject;
//var bullet : Rigidbody;

function Start () {

}

function Update () 
{
	if (Input.GetButtonDown("Fire1"))
	{
		var clone : GameObject;
		clone = Instantiate(bullet, this.transform.position, this.transform.rotation);
		//clone.rigidbody.velocity = transform.TransformDirection(Vector3.forward * 10);
		clone.rigidbody.AddRelativeForce(-1000, 0, 0);
		Destroy(clone, 3);
	}
}