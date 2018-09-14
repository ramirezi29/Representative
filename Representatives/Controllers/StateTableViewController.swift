//
//  RepTableViewController.swift
//  Representatives
//
//  Created by Ivan Ramirez on 9/12/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class StateTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return States.stateNamesInitials.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stateCell", for: indexPath)
        
        cell.textLabel?.text = States.stateNames[indexPath.row]
        
        return cell
    }
    
     // MARK: - Navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toRepsVC"  {
          let destinationVC = segue.destination as? StateDetialTableViewController
            guard let indexpath = tableView.indexPathForSelectedRow else {return}
            //let representativeEntry = RepresentativeController.shared.representatives[indexpath.row]
            let stateInitial = States.stateNamesInitials[indexpath.row]
            destinationVC?.stateInitial = stateInitial
        }
     }
}
