//
//  RepresentativeController.swift
//  Representatives
//
//  Created by Ivan Ramirez on 9/12/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

class RepresentativeController {
    
    
    static let shared = RepresentativeController()
    
    var representatives: [Representative] = []
    
    let baseURL = URL(string: "http://whoismyrepresentative.com/getall_reps_bystate.php")
    
    func searchRepresentatives(forState state: String, completion: @escaping ([Representative]) -> Void){
        
        guard let url = baseURL else {
            fatalError("🌧 Bad url")
        }
        
      
        
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        
        let queryItem = URLQueryItem(name: "state", value: "\(state)")
        // not sure if this is the correct url for the code below. didn build the Built URL
        
        let queryItemJson = URLQueryItem(name: "output", value: "json")
        
        components?.queryItems = [queryItem, queryItemJson]
        
        //The code below is our fully func URL
        guard let queryURL = components?.url else {return}
        var request = URLRequest(url: queryURL)
        request.httpMethod = "GET"
        print(queryURL)
//        let asciiStringFromData = String(data: statesThatComeBack, encoding: .ascii)
//        let dataAsUTF8 = Data(asciiStringFromData.utf8)
//
        
        
        //RepresentativeDictioanry
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                print("There was an error with dataTask\(error) \(error.localizedDescription)")
                completion([]); return
            }
            
            
            guard let data = data else {completion([]); return}
            guard let asciiStringFromData = String(data: data, encoding: .ascii) else { completion([]); return }
            let dataAsUTF8 = Data(asciiStringFromData.utf8)
            
            do {
               
                let statesThatComeBack = try JSONDecoder().decode(RepresentativeDictioanry.self, from: dataAsUTF8).results
                self.representatives = statesThatComeBack
                completion(statesThatComeBack)
                
            } catch let error {
                print("🤯 there was an error decoding objects: \(error)\(error.localizedDescription)")
                completion([]); return
            }
            
         
            
        }.resume()
   
    }//BRACE for FUNC Search
    
    
    

    
}//LAST BRACE
