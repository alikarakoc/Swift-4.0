//
//  ViewController.swift
//  Basic Calculator
//
//  Created by Ali Karakoç on 27.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = ""
        
    }
    @IBAction func toplama(_ sender: Any) {
        if let firstNumber = Int(textField1.text!){
            //Eğer textfield1.text ben alıp integer a döndürebilirsem
            if let secondNumber = Int(textField2.text!){
                result = firstNumber + secondNumber;
                resultLabel.text = String(result);
            }
        }
    }
    @IBAction func carpma(_ sender: Any) {
        if let firstNumber = Int(textField1.text!){
            //Eğer textfield1.text ben alıp integer a döndürebilirsem
            if let secondNumber = Int(textField2.text!){
                result = firstNumber * secondNumber;
                resultLabel.text = String(result);
            }
        }
    }
    @IBAction func cikarma(_ sender: Any) {
        if let firstNumber = Int(textField1.text!){
            //Eğer textfield1.text ben alıp integer a döndürebilirsem
            if let secondNumber = Int(textField2.text!){
                result = firstNumber - secondNumber;
                resultLabel.text = String(result);
            }
        }
    }
    @IBAction func bolme(_ sender: Any) {
        if let firstNumber = Int(textField1.text!){
            //Eğer textfield1.text ben alıp integer a döndürebilirsem
            if let secondNumber = Int(textField2.text!){
                result = firstNumber / secondNumber;
                resultLabel.text = String(result);
            }
        }
    }
    
}

