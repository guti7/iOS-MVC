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
    
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        for friend in friends {
            print("\(friend.name): \(friend.mood.rawValue)")
        }
    }
    
    
    // MARK: - Data Source
    
    // Get the number of rows to display
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    // Get the cell to display at the given row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        
        let currentFriend = friends[indexPath.row]
        
        cell.friend = currentFriend
        
        cell.friendsController = self
        
        updateUIFor(cell, with: currentFriend)
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addNewFriendController = segue.destination as? AddFriendViewController {
//            addNewFriendController.delegate = self
            addNewFriendController.friendsController = self
        }
    }
    
    
    // MARK: - Helpers
    
    // Update the cell's interface
    func updateUIFor(_ cell: FriendTableViewCell, with friend: Friend) {
        // update the name
        cell.nameLabel.text = friend.name
        
        // update description label
        switch friend.mood {
        case .angry:
            cell.moodDescriptionLabel.text = FriendsTableViewController.angryString
        case .medium:
            cell.moodDescriptionLabel.text = FriendsTableViewController.mediumString
        case .happy:
            cell.moodDescriptionLabel.text = FriendsTableViewController.happyString
        }
        
        // update button
        cell.moodButton.setTitle(friend.mood.rawValue, for: .normal)
    }
    
    
    // Update the friends model and view with a completion
    func updateFriendsWith(completion handler: () -> Void) {
        // Can declare handler as @escaping - refers to self explicitly
        // and @autoclosure to avoid the closure expression syntax
        handler()
    }

}
