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

    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = "Score: \(playerScore)"
    
    }

}
