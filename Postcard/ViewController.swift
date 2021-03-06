//
//  ViewController.swift
//  Postcard
//
//  Created by Derek Smith on 19/05/2015.
//  Copyright (c) 2015 Derek Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()     //set the text colour to red
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()    //makes the keyboard go away
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

