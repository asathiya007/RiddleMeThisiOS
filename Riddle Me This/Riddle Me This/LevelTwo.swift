//
//  LevelTwo.swift
//  Riddle Me This
//
//  Created by Akshay Sathiya on 11/23/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class LevelTwo: UIViewController {
    
    var playerScore = Int()
    
    var correctButton : Bool = false

    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBAction func cloudPressed(_ sender: Any) {
        performSegue(withIdentifier: "wrongAnswerLvl2Segue", sender: self)
    }
    
    
    @IBAction func powerPressed(_ sender: Any) {
        performSegue(withIdentifier: "wrongAnswerLvl2Segue", sender: self)
    }
    
    @IBAction func compassPressed(_ sender: Any) {
        performSegue(withIdentifier: "wrongAnswerLvl2Segue", sender: self)
    }
    
    
    @IBAction func heartPressed(_ sender: Any) {
        correctButton = true
       playerScore += 1
        performSegue(withIdentifier: "correctLvl2Segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = "Score: \(playerScore)"
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (correctButton) {
            var correctLvl2 = segue.destination as! CorrectLvl2
            correctLvl2.playerScore = playerScore
            
        } else {
            var gameOver = segue.destination as! GameOver
            gameOver.finalScore = playerScore
        }
    }

}
