//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    let allStories = StoryData()
    var storyIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateStory()
        
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        if(sender.tag == 1){
            storyIndex = allStories.list[storyIndex].answerADestination
        } else {
            storyIndex = allStories.list[storyIndex].answerBDestination
        }
        
        nextChapter()
    }
    
    func updateStory(){
        storyTextView.text = allStories.list[storyIndex].storyText
        if(allStories.list[storyIndex].answerAText.isEmpty){
            topButton.isHidden = true
        } else {
            topButton.isHidden = false
            topButton.setTitle(allStories.list[storyIndex].answerAText, for: .normal)
        }
        if(allStories.list[storyIndex].answerBText.isEmpty){
            bottomButton.setTitle("Start Over!", for: .normal)
        } else {
            bottomButton.setTitle(allStories.list[storyIndex].answerBText, for: .normal)
        }
    }
    
    func nextChapter(){
        
        updateStory()
    }

}

