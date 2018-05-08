//
//  DollarDelegate.swift
//  TextFieldChallenge
//
//  Created by Ion M on 5/8/18.
//  Copyright © 2018 Ion M. All rights reserved.
//

import Foundation
import UIKit

class DollarDelegate: NSObject, UITextFieldDelegate {
    
    var amount = ""
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let number = NumberFormatter()
        number.minimumIntegerDigits = 1
        number.minimumFractionDigits = 2
        
        func formating() {
            let decimalNumber = NSDecimalNumber(string: amount).multiplying(by: 0.01)
            let newString = "$" + number.string(from: decimalNumber)!
            textField.text = newString
        }
        
        if string.count > 0 {
            amount += string
            formating()
        } else {
            amount = String(amount.dropLast())
            if amount.count > 0 {
                formating()
            } else {
                textField.text = "$0.00"
            }
        }
        return false
    }
}
