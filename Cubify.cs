using UnityEngine;
using System.Collections;

public class Cubify : MonoBehaviour {

	// Use this for initialization
	void Start () {
		int NUM_CUBES = 9001;
		Random.seed = 234;
		
		for (int i = 0; i < NUM_CUBES; i++) {
			for (int j = 0; j < NUM_CUBES; j++) {
				GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
				cube.transform.position = new Vector3(i + cube.transform.localScale.magnitude,
					j + cube.transform.localScale.magnitude, 0);
				cube.renderer.material.color = new Color(Random.Range(0f,1f), Random.Range(0f,1f), Random.Range(0f,1f));
			}	
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
