//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ali Karakoç on 28.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpson]()
    var chosenSimson = Simpson()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson Class

        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.occupation = "Öğrenci"
        bart.image = UIImage(named: "bart.png")!
        
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.occupation = "Uzman"
        homer.image = UIImage(named: "homer.png")!
        
        let lisa = Simpson()
        lisa.name = "Lisa Simpson"
        lisa.occupation = "Anne"
        lisa.image = UIImage(named: "lisa.png")!
        
        let moggie = Simpson()
        moggie.name = "Moggie Simpson"
        moggie.occupation = "Bebek"
        moggie.image = UIImage(named: "maggie.png")!
        
        mySimpsons.append(bart)
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(moggie)

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "detailsViewController", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsViewController" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = self.chosenSimson
        }
    }
}

