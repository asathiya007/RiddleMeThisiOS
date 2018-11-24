//
//  LevelTwo.swift
//  Riddle Me This
//
//  Created by Akshay Sathiya on 11/23/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class CorrectLvl1: UIViewController {
    
    var playerScore = Int()

    @IBOutlet weak var scoreTextField: UILabel!
    
    
    
    @IBAction func toLvl2Pressed(_ sender: Any) {
        performSegue(withIdentifier: "toLvl2Segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreTextField.text = "Score: \(playerScore)"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var nextLevel = segue.destination as! LevelTwo
        nextLevel.playerScore = playerScore
    }

}
