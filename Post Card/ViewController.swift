//
//  ViewController.swift
//  Post Card
//
//  Created by Sanjay Rai on 07/10/2014.
//
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

    //"sender" argument allows us to code in some code to update the buttons properties such as color, font, etc. "IBActions" are used to create a function that is called when the trigger is occured
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //We use the "." notation to access properties or attributes of UI elements. "BOOLEANS" in swift = "true or "false"3
        sender.backgroundColor = UIColor.magentaColor()
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.magentaColor()
        
        mailButton.setTitle("SENT MAIL!!!", forState: UIControlState.Normal)
        
        enterMessageTextField.text = ""

}

}

