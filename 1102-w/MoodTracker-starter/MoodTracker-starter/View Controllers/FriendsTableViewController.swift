//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
  
    // MARK: - Variables
    static let happyString = "Oh happy day..."
    static let angryString = "Get off my lawn!!!"
    static let mediumString = "Well, I don't really care."
    
    var friends = [
        Friend(name: "John", mood: .happy),
        Friend(name: "Jack", mood: .medium),
        Friend(name: "Sarah", mood: .angry),
        Friend(name: "Jenny", mood: .happy)
    ]
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Data Source
    
    // Get the number of rows to display
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    // Get the cell to display at the given row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        
        let currentFriend = friends[indexPath.row]
        
        cell.friend = currentFriend
        cell.delegate = self
        
        // update the name
        cell.nameLabel.text = currentFriend.name
        
        // update description label
        switch currentFriend.mood {
        case .angry:
            cell.moodDescriptionLabel.text = FriendsTableViewController.angryString
        case .medium:
            cell.moodDescriptionLabel.text = FriendsTableViewController.mediumString
        case .happy:
            cell.moodDescriptionLabel.text = FriendsTableViewController.happyString
        }
        
        // update button
        cell.moodButton.setTitle(currentFriend.mood.rawValue, for: .normal)
        
        return cell
    }
}

// MARK: - Extensions

// Extend class with protocol
extension FriendsTableViewController: FriendsDelegate {
    
    func changeMoodFor(_ friend: Friend) {
        
        // change model
        friend.mood = Mood.getNewMood(friend.mood)
        
        // update the view - could get the indexPath and reloadRow instead?
        tableView.reloadData()
    }
}

