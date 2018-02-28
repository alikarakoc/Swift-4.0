//
//  ViewController.swift
//  Landmark Book
//
//  Created by Ali Karakoç on 28.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    var selectedLandmarkName=""
    var selectedLandmarkImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        landmarkNames.append("Collosum1")
        landmarkNames.append("Collosum2")
        landmarkNames.append("Collosum3")
        landmarkNames.append("Collosum4")
        landmarkNames.append("Collosum5")
        
        landmarkImages.append(UIImage(named: "1.jpeg")!)
        landmarkImages.append(UIImage(named: "2.jpeg")!)
        landmarkImages.append(UIImage(named: "3.jpg")!)
        landmarkImages.append(UIImage(named: "4.jpeg")!)
        landmarkImages.append(UIImage(named: "5.jpeg")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "imageViewController"{
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.landmarkName = selectedLandmarkName
            destinationVC.landmarkImage = selectedLandmarkImage
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedLandmarkName = landmarkNames[indexPath.row]
        selectedLandmarkImage = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "imageViewController", sender: nil)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    
}

