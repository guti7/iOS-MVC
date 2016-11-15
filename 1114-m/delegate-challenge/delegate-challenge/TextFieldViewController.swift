//
//  TextFieldViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var textField: UITextField!
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    textField.delegate = self
    
  }
  
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        textField.text = textField.text!.uppercased()
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
  
}
