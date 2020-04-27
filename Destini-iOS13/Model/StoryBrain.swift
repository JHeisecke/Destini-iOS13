//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [Story(choice1: "Take a left.", choice2: "Take a right.", title: "You see a fork in the road."),
                   Story(choice1: "Shout for help.", choice2: "Play Dead.", title: "You see a tiger."),
                   Story(choice1: "Open it.", choice2: "Check for traps.", title: "You find a treasure chest.")]
    var storyNumber = 0
    
    mutating func nextStory(userChoice : String){
        if userChoice == "Take a left." {
            storyNumber = 1
        } else if userChoice == "Take a right."{
            storyNumber = 2
        }
    }
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getStoryChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getStoryChoice2() -> String {
        return stories[storyNumber].choice2
    }
}
