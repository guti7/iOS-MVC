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
    var delegate: FriendsDelegate?
    var friend: Friend? // stores the friend that is displayed in this cell
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moodDescriptionLabel: UILabel!
    @IBOutlet weak var moodButton: UIButton!
    
    
    
    // Action computed when mood button is pressed
    @IBAction func moodButtonPressed(_ sender: UIButton) {
        print(#line, #function)
        delegate?.changeMoodFor(friend!)
    }
    
}

// MARK: - Protocols

// Manage friends
protocol FriendsDelegate {
    
    // Change mood for a friend
    func changeMoodFor(_ friend: Friend)
    
}
