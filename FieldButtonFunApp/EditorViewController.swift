//
//  EditorViewController.swift
//  FieldButtonFunApp
//
//  Created by Koby Samuel on 10/28/15.
//  Copyright © 2015 Koby Samuel. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {
	@IBOutlet weak var templateField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func updateEditor(sender: AnyObject) {
		(presentingViewController as! ViewController).theTemplate.text = templateField.text
	}
	
	@IBAction func hideKeyboard(sender: AnyObject) {
		templateField.resignFirstResponder()
	}
	
	override func viewWillAppear(animated: Bool) {
		templateField.text = (presentingViewController as! ViewController).theTemplate.text
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
