//
//  CorrectLvl3.swift
//  Riddle Me This
//
//  Created by Akshay Sathiya on 11/23/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class CorrectLvl3: UIViewController {
    
    var playerScore = Int()
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBAction func gotItPressed(_ sender: Any) {
        performSegue(withIdentifier: "endGameSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = "Score: \(playerScore)"
        
    }

}
