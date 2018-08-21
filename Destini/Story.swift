//
//  Story.swift
//  Destini
//
//  Created by Ace Goulet on 8/16/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    
    let storyIndex : Int
    let storyText : String
    let answerAText : String
    let answerBText : String
    let answerADestination : Int
    let answerBDestination : Int
    
    init(index: Int, story: String, answerA: String, answerB: String, answerADestinationIndex: Int, answerBDestinationIndex: Int){
        storyIndex = index
        storyText = story
        answerAText = answerA
        answerBText = answerB
        answerADestination = answerADestinationIndex
        answerBDestination = answerBDestinationIndex
    }
}
