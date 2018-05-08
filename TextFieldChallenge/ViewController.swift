//
//  ViewController.swift
//  TextFieldChallenge
//
//  Created by Ion M on 5/8/18.
//  Copyright © 2018 Ion M. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var enableDisableTextField: UITextField!
    @IBOutlet weak var switchState: UISwitch!
    
    let zipDelegate = ZipCodeDelegate()
    let dollarDelegate = DollarDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zipTextField.delegate = zipDelegate
        dollarTextField.delegate = dollarDelegate
        //enableDisableTextField.delegate = self
        
    }
    
    @IBAction func toggleTextField(_ sender: AnyObject) {
        
        if switchState.isOn {
            enableDisableTextField.isEnabled = true
        } else {
            enableDisableTextField.isEnabled = false
        }
    }
}

