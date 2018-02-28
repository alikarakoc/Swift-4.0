//
//  ViewController.swift
//  ProblemApp
//
//  Created by Ali Karakoç on 27.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func buttonClick(_ sender: Any) {
        
        resultLabel.text = String(Int(textField.text!)! * 5)
    }
}

