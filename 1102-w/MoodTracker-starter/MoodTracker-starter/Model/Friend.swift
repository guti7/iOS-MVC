//
//  Friend.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 04/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//


// Friend Class
class Friend {
    
    // Properties
    let name: String
    var mood: Mood
    
    // Initializers
    init(name: String, mood: Mood){
        self.name = name
        self.mood = mood
    }
    
}

// version 1.0 from master iOS-MVC nikolas make-school-18
//class Friend {
//  
//  let name: String
//  var mood: Mood
//  
//  init(name: String, mood: Mood){
//    self.name = name
//    self.mood = mood
//  }
//  
//}
