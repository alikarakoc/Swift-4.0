//
//  ViewController.swift
//  Images
//
//  Created by Ali Karakoç on 27.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var myNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonChange(_ sender: Any) {
        if myNumber == 0 {
            imageView.image = UIImage(named: "1.jpeg")
            myNumber = myNumber + 1
        } else if myNumber == 1{
            imageView.image = UIImage(named: "2.jpg")
            myNumber = myNumber - 1
        }
     
    }
    
}

