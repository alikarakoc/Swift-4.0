//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Ali Karakoç on 28.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var isJamesOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //kullanıcı ile içli dışlı olacak mı resime tıklayabilir mi ?
        imageView.isUserInteractionEnabled = true;
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
 
    @objc func changePic(){
        
        if isJamesOn == true {
            imageView.image = UIImage(named: "1.jpeg")
            nameLabel.text = "1. resim"
            isJamesOn = false
        } else if isJamesOn == false {
            imageView.image = UIImage(named: "2.jpg")
            nameLabel.text = "2. resim"
            isJamesOn = true
        }
        
    }

}

