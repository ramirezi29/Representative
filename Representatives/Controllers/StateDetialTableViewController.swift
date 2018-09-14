//
//  StateDetialTableViewController.swift
//  Representatives
//
//  Created by Ivan Ramirez on 9/12/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class StateDetialTableViewController: UITableViewController {

    
    //landing pad
    var stateInitial: String?

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let stateInitial = stateInitial else {
            return
        }
        
        RepresentativeController.shared.searchRepresentatives(forState: stateInitial) { (reps) in
            RepresentativeController.shared.representatives = reps
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
       // tableView.reloadData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

  
    // MARK: - Table view data source

   
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
       
        return RepresentativeController.shared.representatives.count
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stateDetailCell", for: indexPath)
        let rep = RepresentativeController.shared.representatives[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text = rep.name
        
        cell.detailTextLabel?.text = rep.district
        return cell
    }

//    func updateViews(){
//        guard let represenstative = representative else {return}
//
 //   }
    
    // MARK: - Navigation

    ///personDetailCell
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAllDetails" {
        let destinationVC = segue.destination as? SecondDetailViewController
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            let repsInfo = RepresentativeController.shared.representatives[indexPath.row]
            destinationVC?.representative = repsInfo
            destinationVC?.state = stateInitial
        }
    }
    

}
