//
//  LevelOne.swift
//  Riddle Me This
//
//  Created by Akshay Sathiya on 11/23/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class LevelOne: UIViewController {
    
    var playerScore = Int()
    var correctButton : Bool = false
    
    @IBOutlet weak var scoreTextField: UILabel!
    
    @IBAction func anchorPressed(_ sender: Any) {
        correctButton = true
        playerScore += 1
        performSegue(withIdentifier: "correctLvl1Segue", sender: self)
    }
    
    @IBAction func tagPressed(_ sender: Any) {
        performSegue(withIdentifier: "exitLvl1Segue", sender: self)
    }
    
    
    @IBAction func heartPressed(_ sender: Any) {
        performSegue(withIdentifier: "exitLvl1Segue", sender: self)
    }
    
    
    @IBAction func USBDrivePressed(_ sender: Any) {
        performSegue(withIdentifier: "exitLvl1Segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreTextField.text = "Score: \(playerScore)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (correctButton) {
            var correctLvl1 = segue.destination as! CorrectLvl1
            correctLvl1.playerScore = playerScore
        } else {
            var gameOver = segue.destination as! GameOver
            gameOver.finalScore = playerScore
        }
        
    }

}
