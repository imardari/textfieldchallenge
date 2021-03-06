//
//  ZipCodeDelegate.swift
//  TextFieldChallenge
//
//  Created by Ion M on 5/8/18.
//  Copyright © 2018 Ion M. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newString = textField.text! as NSString
        newString = newString.replacingCharacters(in: range, with: string) as NSString
        
        return newString.length <= 5
    }
    
    
}
