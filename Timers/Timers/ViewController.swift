//
//  ViewController.swift
//  Timers
//
//  Created by Ali Karakoç on 28.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
 
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timeLabel.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunc(){
        timeLabel.text = String(counter);
        counter = counter - 1
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's off"
        }
        
    }
}

