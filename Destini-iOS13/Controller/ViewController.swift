//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Eleanor Kalu on 11.04.2021
//  Copyright © 2021 Blarnyä. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    let choice1Title = "Choice 1"
    let choice2Title = "Choice 2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }
    @IBAction func choiceMade (_ sender: UIButton) {
        
        // storyBrain.nextStory(userChoice: sender.currentTitle)
        storyBrain.nextStory(userChoice: sender.currentTitle ?? " ")
        
        // Update Storyboard
        updateUI()
        
    }
    
    
    func updateUI() {
        // Based upon the choice selected navigate to the next screen
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
        
}
