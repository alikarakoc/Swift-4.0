//
//  ViewController.swift
//  ArtBook
//
//  Created by Ali Karakoç on 28.02.2018.
//  Copyright © 2018 falezz web & mobile. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var nameArray = [String]()
    var yearArray = [Int]()
    var artistArray = [String]()
    var imageArray = [UIImage]()
    
    var selectedPainting = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        tableView.delegate = self
        tableView.dataSource = self
        
        getInfo()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.getInfo), name: NSNotification.Name(rawValue:"newPainting"), object: nil)
    }
    
    @objc func getInfo(){
        
        nameArray.removeAll(keepingCapacity: false)
        yearArray.removeAll(keepingCapacity: false)
        artistArray.removeAll(keepingCapacity: false)
        imageArray.removeAll(keepingCapacity: false)

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Paintings")
        fetchRequest.returnsObjectsAsFaults = false
        
        do {
            
            let results = try context.fetch(fetchRequest)
            
            if results.count>0{
                for result in results as! [NSManagedObject]{
                    if let name = result.value(forKey: "name") as? String {
                        self.nameArray.append(name)
                    }
                    if let year = result.value(forKey: "year") as? Int {
                        self.yearArray.append(year)
                    }
                    if let artist = result.value(forKey: "artist") as? String {
                        self.artistArray.append(artist)
                    }
                    if let image = result.value(forKey: "image") as? Data {
                        let imageData = UIImage(data: image)
                        self.imageArray.append(imageData!)
                    }
                    
                    self.tableView.reloadData()
                }
            }
            
        } catch {
            print("error")
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailsViewController" {
            
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chosenPainting = selectedPainting
            
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedPainting = nameArray[indexPath.row]
        performSegue(withIdentifier: "DetailsViewController", sender: nil)

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = nameArray[indexPath.row]
        return cell
    }
    @IBAction func addButtonClick(_ sender: Any) {
        selectedPainting = ""
        performSegue(withIdentifier: "DetailsViewController", sender: nil)
    }
}

