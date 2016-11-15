//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    var friend: Friend? // stores the friend that is displayed in this cell
    var updateFriendClosure: ((Friend) -> Void)?

    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moodDescriptionLabel: UILabel!
    @IBOutlet weak var moodButton: UIButton!
    
    
    // MARK: - Actions
    
    // Action computed when mood button is pressed
    @IBAction func moodButtonPressed(_ sender: UIButton) {
        updateFriendClosure?(friend!)
    }
}
