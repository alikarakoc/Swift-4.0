//
//  ViewController.swift
//  Segues
//
//  Created by Ali Karakoç on 27.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    var username = ""
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromFirstToSecond" {
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.name = username
        }
    }
    
    @IBAction func saveClick(_ sender: Any) {
        username = nameText.text!
        performSegue(withIdentifier: "fromFirstToSecond", sender: nil);
    }
}

