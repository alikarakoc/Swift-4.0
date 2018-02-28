//
//  ViewController.swift
//  Colors
//
//  Created by Ali Karakoç on 28.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        view.backgroundColor = UIColor.green
        
    }
    @IBAction func whiteClick(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
    @IBAction func blackClick(_ sender: Any) {
        view.backgroundColor = UIColor.black
    }
    @IBAction func magentaClick(_ sender: Any){
        view.backgroundColor = UIColor.magenta
    }
    @IBAction func grayClick(_ sender: Any) {
        view.backgroundColor = UIColor.gray
    }
    @IBAction func yellowClick(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
}

