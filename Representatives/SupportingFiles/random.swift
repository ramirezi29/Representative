//
//  random.swift
//  Representatives
//
//  Created by Ivan Ramirez on 9/12/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation
/*
static let stateNames = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]

static let stateNames = ["Alaska", "Alabama", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
 
 //---------
 
 
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

*/
