using UnityEngine;
using System.Collections;

public class Dummy : MonoBehaviour {

	// Use this for initialization
	void Start () {
		guiText.text = "Robert is cool!";
		Debug.Log("User entered his name: " + guiText.text);
	}
	
	void Update() {
		
        foreach (char c in Input.inputString) {
            if (c == '\b') {
                if (guiText.text.Length != 0)
					guiText.text = guiText.text.Substring(0, guiText.text.Length - 1);	
			}
            else {
                if (c == '\n' || c == '\r')
                    Debug.Log("User entered his name: " + guiText.text);
                else
                    guiText.text += c;
			}
        }
    }
}
