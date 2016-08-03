//
//  ViewController.swift
//  FieldButtonFun
//
//  Created by Koby Samuel on 10/7/15.
//  Copyright © 2015 Koby Samuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var thePlace: UITextField!
	@IBOutlet weak var theVerb: UITextField!
	@IBOutlet weak var theNumber: UITextField!
	@IBOutlet weak var theTemplate: UITextView!
	@IBOutlet weak var theStory: UITextView!
	@IBOutlet weak var theAdverb: UITextField!
	@IBOutlet weak var theAdjective: UITextField!
	@IBOutlet weak var theNoun: UITextField!
	
	@IBAction func createStory(sender: AnyObject) {
		theStory.text = theTemplate.text
		theStory.text = theStory.text.stringByReplacingOccurrencesOfString("<adjective>", withString: theAdjective.text!).stringByReplacingOccurrencesOfString("<noun>", withString: theNoun.text!).stringByReplacingOccurrencesOfString("<place>", withString: thePlace.text!).stringByReplacingOccurrencesOfString("<adverb>", withString: theAdverb.text!).stringByReplacingOccurrencesOfString("<verb>", withString: theVerb.text!).stringByReplacingOccurrencesOfString("<number>", withString: theNumber.text!)
	}
	
	@IBAction func hideKeyboard(sender: AnyObject) {
		thePlace.resignFirstResponder()
		theVerb.resignFirstResponder()
		theNumber.resignFirstResponder()
		theTemplate.resignFirstResponder()
	}
	
	@IBAction func exitToHere(sender: UIStoryboardSegue) {
		// Execute this code after unwinding.
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

