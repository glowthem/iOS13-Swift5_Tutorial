//
//  ViewController.swift
//  EggTimer
//
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //    let softTime = 5, mediumTime = 7, hardTime = 12
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var secondsRemaining = 60
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        if let checkTitle = sender.currentTitle {
            secondsRemaining = eggTimes[checkTitle]!
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        }
        if secondsRemaining == 0 {
            titleLabel.text = "It's Done!!"
        }
    }
    
}
