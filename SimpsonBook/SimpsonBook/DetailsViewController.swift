//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Ali Karakoç on 28.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var meslekLabel: UILabel!
    
    var selectedSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpson.name
        meslekLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image
    }
}
