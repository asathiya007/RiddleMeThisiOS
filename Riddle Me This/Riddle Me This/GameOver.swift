//
//  GameOver.swift
//  Riddle Me This
//
//  Created by Akshay Sathiya on 11/23/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class GameOver: UIViewController {
    
    var finalScore = Int()
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func replayButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "replayGame", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreLabel.text = "Score: \(finalScore)"
    }

}
