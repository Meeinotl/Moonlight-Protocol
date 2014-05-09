using UnityEngine;
using System.Collections;

public class FlipBoard : MonoBehaviour {

	[HideInInspector] public bool flipped;
	private Quaternion targetRotation;
	private int prevT;
	private float flipVel;

	void Start () {
		targetRotation = transform.rotation;
		Debug.Log(transform.rotation);
	}

	void Reset() {
		transform.rotation = new Quaternion(0, 0, 0, 1);
	}
	
	void Update () {
		int t = (int) Input.GetAxis("Fire1");
		t = Input.GetKey(KeyCode.F) ? 1 : 0;

		if(t != 0 && prevT == 0) {
			targetRotation *= Quaternion.Euler(0, 0, 180 * t);
		}

		transform.rotation = Quaternion.Lerp(transform.rotation, targetRotation, 10 * Time.deltaTime);
		flipped = Mathf.Abs(transform.rotation.z) >= 0.9f;

		prevT = t;
	}
}
