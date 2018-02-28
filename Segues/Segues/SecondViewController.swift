//
//  SecondViewController.swift
//  Segues
//
//  Created by Ali Karakoç on 27.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name;
    }

    @IBAction func backClick(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
        
    }
}
