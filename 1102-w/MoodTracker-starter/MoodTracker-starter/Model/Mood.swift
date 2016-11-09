//
//  Mood.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 04/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

// Enum for Mood type
enum Mood: String {
    case happy = "😁"
    case medium = "😑"
    case angry = "😡"
    
    
    // Helper method to provide a new mood
    static func getNewMood(_ mood: Mood) -> Mood {
        
        switch mood {
        case .angry:
            return .happy
        case .medium:
            return .angry
        case .happy:
            return .medium
        }
    }
}

// version 1.0 from master iOS-MVC nikolas make-school-18
//enum Mood: String {
//  case happy = "😁"
//  case medium = "😑"
//  case angry = "😡"
//}
