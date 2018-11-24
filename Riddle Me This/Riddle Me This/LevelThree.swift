//
//  LevelThree.swift
//  Riddle Me This
//
//  Created by Akshay Sathiya on 11/23/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class LevelThree: UIViewController {
    
    var playerScore = Int()
    
    var correctButton : Bool = false
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBAction func casePressed(_ sender: Any) {
        performSegue(withIdentifier: "wrongAnswerLvl3Segue", sender: self)
    }
    
    
    @IBAction func mailPressed(_ sender: Any) {
        performSegue(withIdentifier: "wrongAnswerLvl3Segue", sender: self)
    }
    
    
    @IBAction func coffeePressed(_ sender: Any) {
        performSegue(withIdentifier: "wrongAnswerLvl3Segue", sender: self)
    }
    
    
    @IBAction func giftPressed(_ sender: Any) {
        correctButton = true
        playerScore += 1
        performSegue(withIdentifier: "correctLvl3Segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = "Score: \(playerScore)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (correctButton) {
            var correctLvl3 = segue.destination as! CorrectLvl3
            correctLvl3.playerScore = playerScore
        } else {
            var gameOver = segue.destination as! GameOver
            gameOver.finalScore = playerScore
        }
    }
    
}
