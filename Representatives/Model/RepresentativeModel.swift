//
//  RepresentativeModel.swift
//  Representatives
//
//  Created by Ivan Ramirez on 9/12/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

struct RepresentativeDictioanry: Decodable {
    let results: [Representative]
}

struct Representative: Codable {
    
    let name: String
    let party: String
    let state: String
    let district: String
    let phone: String
    let office: String
    let link: String
}
