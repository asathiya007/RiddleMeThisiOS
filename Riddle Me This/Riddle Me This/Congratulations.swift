//
//  Congratulations.swift
//  Riddle Me This
//
//  Created by Akshay Sathiya on 11/24/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class Congratulations: UIViewController {
    
    var playerScore = Int()
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func replayPressed(_ sender: Any) {
        performSegue(withIdentifier: "replaySegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(playerScore)"
    }
    
}
