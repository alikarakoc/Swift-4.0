//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Ali Karakoç on 27.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let witdh = view.frame.size.width
        let height = view.frame.size.height
        
        myLabel.text = "My Test Label"
        myLabel.textAlignment = .center
        myLabel.frame  = CGRect(x: witdh*0.1, y: height*0.3, width: witdh*0.8, height: 50)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.frame = CGRect(x: witdh*0.2, y: height*0.5, width: witdh*0.6, height: 50)
        myButton.setTitle("My Button", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func myAction(){
        myLabel.text = "You clicked!"
    }
}

