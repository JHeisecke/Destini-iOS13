//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let stories = [Story(choice1: "Take a left.", choice2: "Take a right.", title: "You see a fork in the road."),
                   Story(choice1: "Shout for help.", choice2: "Play Dead.", title: "You see a tiger."),
                   Story(choice1: "Open it.", choice2: "Check for traps.", title: "You find a treasure chest.")]

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(index: 0)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        var indexSelected = 0
        if let userAnswer = sender.currentTitle {
            if userAnswer == "Take a left." {
                indexSelected = 1
            } else if userAnswer == "Take a right."{
                indexSelected = 2
            }
            
            updateUI(index: indexSelected)
        }
    }
    
    func updateUI(index i : Int) {
        
        storyLabel.text = stories[i].title
        choice1Button.setTitle(stories[i].choice1, for: .normal)
        choice2Button.setTitle(stories[i].choice2, for: .normal)
    }
    
}

