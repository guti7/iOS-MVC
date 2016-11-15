//
//  PickerViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: - Outlets
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var cityLabel: UILabel!
    
    
    // MARK: - Properties
    let cities = ["Guanajuato", "New York", "San Francisco", "Berlin", "Hamburg", "Paris"]
    
    
    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Assign delegate and data souce for this Picker View
        pickerView.delegate = self
        pickerView.dataSource = self
        
        // start with the third index shown on the Picker view
        pickerView.selectRow(3, inComponent: 0, animated: true)
        
    }
    
    
    // MARK: - Picker View Data Source
    
    // Called by the picker view when it needs the number of components. Required.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Called by the picker view when it needs the number of rows for a specified component. Required.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    
    // MARK: - Picker View Delegate
    
    // Called by the picker view when it needs the title to use for a given row in a given component
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    
    // Called by the picker view when the user selects a row in a component
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cityLabel.text = cities[row]
    }
}
