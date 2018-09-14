//
//  SecondDetailTableViewController.swift
//  Representatives
//
//  Created by Ivan Ramirez on 9/13/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class SecondDetailViewController: UIViewController {
    
    // landing pad
    var representative: Representative?
    
    //states
    var state: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        updateImage()
}
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var partyLabel: UILabel!
    @IBOutlet weak var initialLabel: UILabel!
    @IBOutlet weak var districLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func updateViews(){
        guard let representative = representative else { return }
        partyLabel.text = ("Political Party: \(representative.party)")
        nameLabel.text = ("Name: \(representative.name)")
        //United States is the defaul value for the optional 'state' value
        addressLabel.text = ("\(representative.office)")
        initialLabel.text = ("State: \(state ?? "United States of American")")
        districLabel.text = ("District: \(representative.district)")
        phoneLabel.text = ("Contact Info: \(representative.phone)")
        linkLabel.text = representative.link
        
    }
    func updateImage(){
    imageView.image = UIImage(named: "flag")
    }
    
}
