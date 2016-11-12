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
    
    // TODO: - Do I still need to have a reference to use callbacks?
    var friendsController: FriendsTableViewController?
    
    var friend: Friend? // stores the friend that is displayed in this cell
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moodDescriptionLabel: UILabel!
    @IBOutlet weak var moodButton: UIButton!
    
    
    // MARK: - Actions
    
    // Action computed when mood button is pressed
    @IBAction func moodButtonPressed(_ sender: UIButton) {
        
        if let friendsController = friendsController {
            
            friendsController.updateFriendsWith {
                
                friend?.mood = Mood.getNewMood((friend?.mood)!)
                
                friendsController.tableView.reloadData()
                
            }
        }
    }
}
