using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Rod : MonoBehaviour {
	
	public GameObject wire;
	public List<GameObject> connectedTo;
	public bool powered = false;
	public bool lose = false;
	public bool win = false;
	[HideInInspector] public List<GameObject> userConnectedTo;
	
	[HideInInspector] public Dictionary<GameObject, GameObject> wires;
	[HideInInspector] public Dictionary<GameObject, GameObject> userWires;
	
	void Awake() {
		SetColor();
		wires = new Dictionary<GameObject, GameObject>();
		userWires = new Dictionary<GameObject, GameObject>();
		
		foreach(GameObject o in connectedTo) {
			makeWire(wires, o);
		}
		
		if(lose) {
			makeWire(userWires, transform.parent.Find("Alarm").gameObject);
		}
		else if(win) {
			makeWire(userWires, transform.parent.Find("Goal").gameObject);
		}
	}

	void Reset() {
		Unpower();

		foreach(KeyValuePair<GameObject, GameObject> p in wires) {
			Destroy(p.Value);
		}

		foreach(KeyValuePair<GameObject, GameObject> p in userWires) {
			Destroy(p.Value);
		}

		wires.Clear();
		userWires.Clear();
		userConnectedTo.Clear();

		if(tag == "StartRod") {
			Power();
		}

		Awake();
	}
	
	void Update() {
		if(lose) {
			Debug.DrawLine(transform.position + Vector3.up * .04f, transform.parent.Find("Alarm").position + Vector3.up * .04f, Color.red);
		}
		else if(win) {
			Debug.DrawLine(transform.position + Vector3.up * .04f, transform.parent.Find("Goal").position + Vector3.up * .04f, Color.red);
		}
	}
	
	public void SetColor() {
		if(!powered) {
			renderer.material.color = Color.black;
		}
		else {
			renderer.material.color = Color.magenta;
		}
	}
	
	public void connectTo(GameObject other) {
		Rod otherRod = other.GetComponent<Rod>();
		
		if(userConnectedTo.IndexOf(other) == -1) {
			userConnectedTo.Add(other);
			otherRod.userConnectedTo.Add(gameObject);
			makeWire(userWires, other);
			
			if(powered) {
				otherRod.Power();
			}
			if(otherRod.powered) {
				Power();
			}
		}
		else {
			disconnectFrom(other);
		}
	}
	
	public void disconnectFrom(GameObject other) {
		Rod otherRod = other.GetComponent<Rod>();
		
		if(userConnectedTo.IndexOf(other) != -1) {
			userConnectedTo.Remove(other);
			otherRod.userConnectedTo.Remove(gameObject);
			if(userWires.ContainsKey(other)) {
				Destroy(userWires[other]);
				userWires.Remove(other);
			}
			if(otherRod.userWires.ContainsKey(gameObject)) {
				Destroy(otherRod.userWires[gameObject]);
				otherRod.userWires.Remove(gameObject);			
			}
			
			// Not the most efficient way of going about things,
			// but it shouldn't matter for this many rods.
			otherRod.Unpower();
			Unpower();
			GameObject startRod = GameObject.FindWithTag("StartRod");
			if(startRod) {
				Rod startRodRod = startRod.GetComponent<Rod>(); // rod rod rod rod rod
				startRodRod.powered = false;
				startRodRod.Power();
			}
		}
	}
	
	public void Power() {
		if(!powered) {
			powered = true;
			GameObject board = transform.parent.gameObject;
			if(lose) {
				board.renderer.material.color = Color.red;
				// lose magic
				GameObject.Find("FlagBearer").GetComponent<Flag>().miniGame = false;
				GameObject.Find("FlagBearer").GetComponent<Flag>().tutorial = false;
			}
			else if(win && board.renderer.material.color != Color.red) {
				board.renderer.material.color = Color.blue;
				//win magic
				GameObject.Find("FlagBearer").GetComponent<Flag>().miniGame = false;
				GameObject.Find("FlagBearer").GetComponent<Flag>().tutorial = false;
			}
			SetColor();
			
			foreach(GameObject o in connectedTo) {
				o.GetComponent<Rod>().Power();
			}
			
			foreach(GameObject o in userConnectedTo) {
				o.GetComponent<Rod>().Power();
			}
		}
	}
	
	public void Unpower() {
		if(powered) {
			powered = false;
			SetColor();
			foreach(GameObject o in connectedTo) {
				o.GetComponent<Rod>().Unpower();
			}
			
			foreach(GameObject o in userConnectedTo) {
				o.GetComponent<Rod>().Unpower();
			}
		}
	}
	
	GameObject makeWire(Dictionary<GameObject, GameObject> dictionary, GameObject other) {
		GameObject wireObject = (GameObject)Instantiate(wire, Vector3.zero, Quaternion.identity);
		
		LineRenderer line = wireObject.GetComponent<LineRenderer>();
		line.useWorldSpace = false;
		line.SetVertexCount(2);
		line.SetPosition(0, transform.position + Vector3.up * (.05f * (dictionary == userWires ? 1 : -1)));
		line.SetPosition(1, other.transform.position + Vector3.up * (.05f * (dictionary == userWires ? 1 : -1)));
		line.SetColors(Color.red, Color.red);
		line.SetWidth(.003f, .003f);
		
		wireObject.transform.parent = transform;
		
		dictionary.Add(other, wireObject);
		
		return wireObject;
	}
	
	public void FlipBoard(bool flipped) {
		foreach(KeyValuePair<GameObject, GameObject> p in userWires) {
			p.Value.SetActive(!flipped);
		}
		
		foreach(KeyValuePair<GameObject, GameObject> p in wires) {
			p.Value.SetActive(flipped);
		}
	}
}
