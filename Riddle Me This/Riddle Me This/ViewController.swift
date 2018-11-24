//
//  ViewController.swift
//  Riddle Me This
//
//  Created by Akshay Sathiya on 11/23/18.
//  Copyright © 2018 Akshay Sathiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func startButtonPressed(_ sender: Any) {
    
        performSegue(withIdentifier: "startSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

