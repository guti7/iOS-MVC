//
//  TextFieldViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlets
    @IBOutlet weak var textField: UITextField!
    
    
    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Assign the text field delegate
        textField.delegate = self
        
    }
    
    
    // MARK: - UITextFieldDelegate
    
    // Tells the delegate that editing began in the in specified text field.
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    // Asks the delegate if the specified text should be changed.
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(textField.text!, range.location, range.length, string)
        // change the text field text to uppercase as the user types
        textField.text = textField.text!.uppercased()
        return true
    }
    
    // Asks the delegate if the text field should process the pressing of the return button.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
