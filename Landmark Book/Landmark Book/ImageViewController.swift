//
//  ImageViewController.swift
//  Landmark Book
//
//  Created by Ali Karakoç on 28.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var landmarkName = ""
    var landmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = landmarkName
        imageView.image = landmarkImage

     }
 

}
