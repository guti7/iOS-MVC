//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 09/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var moodSegmentedControl: UISegmentedControl!
    
    // MARK: - Variables
    var delegate: FriendsManager!
    
    
    // MARK: View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: Actions
    
    // Save the new friend and present the TableView
    @IBAction func saveButtonPressed(_ sender: AnyObject) {
        
        // TODO: Move text validation to helper method
        // TODO: Mood segment can't be unselected - set default or show alert?
        
        if (nameTextField.text?.isEmpty)! {
            // Alert the user
            let alert = UIAlertController(title: "Empty Name", message: "Field Name can't be empty.", preferredStyle: .alert)
            
            let dismissAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(dismissAction)
            
            present(alert, animated: true, completion: nil)
            return
        }
        
        var newMood: Mood
        let index = moodSegmentedControl.selectedSegmentIndex
        
        switch index {
        case 0:
            newMood = .happy
        case 1:
            newMood = .medium
        case 2:
            newMood = .angry
        default:
            print(#line, #function, index, "No mood selected: ERROR")
            return // no mood selected: Major Error
        }
        
        let friend = Friend(name: nameTextField.text!, mood: newMood)
        
        
        delegate.addNewFriend(friend)
        
//        delegate.addNewFriend(name: nameTextField.text!, atIndex: moodSegmentedControl.selectedSegmentIndex)
        
        dismissViewController()
    }
    
    // Present the TableView
    @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        dismissViewController()
    }
    
    
    // MARK: Helpers
    
    func dismissViewController() {
        presentingViewController?.dismiss(animated: true)
    }
    
}
