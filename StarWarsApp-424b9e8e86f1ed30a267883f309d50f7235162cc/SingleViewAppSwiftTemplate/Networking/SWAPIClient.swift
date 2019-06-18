//
//  SWAPIClient.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-22.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation



class SWAPIClient {
    let downloader = JSONDownloader()
   
    func searchForCharacter(withName name: String, completion: @escaping ([Character], SWAPIError?) -> Void) {
        let endpoint = StarWars.search(name: name, type: DataType.Character)
        
        performRequest(with: endpoint) { results, error in
            guard let results = results else {
                completion([], error)
                return
            }
            
            let characters = results.compactMap { Character(json: $0) }
            
            completion(characters, nil)
        }
    }
    
    func searchForVehicle(withName name: String, completion: @escaping ([Vehicle], SWAPIError?) -> Void) {
        let endpoint = StarWars.search(name: name, type: DataType.Vehicle)
        
        performRequest(with: endpoint) { results, error in
            guard let results = results else {
                completion([], error)
                return
            }
            
            let vehicles = results.compactMap { Vehicle(json: $0) }
            
            completion(vehicles, nil)
        }
    }
    
    func searchForStarship(withName name: String, completion: @escaping ([Starship], SWAPIError?) -> Void) {
        let endpoint = StarWars.search(name: name, type: DataType.Starship)
        
        performRequest(with: endpoint) { results, error in
            guard let results = results else {
                completion([], error)
                return
            }
            
            let starships = results.compactMap { Starship(json: $0) }
            
            completion(starships, nil)
        }
    }
    
    
    func AllCharacters(completion: @escaping ([Character], SWAPIError?) -> Void) {
        let endpoint = StarWars.data(type: .Character)
        
        performRequest(with: endpoint) { results, error in
            guard let results = results else {
                completion([], error)
                return
            }
            
            let characters = results.compactMap { Character(json: $0) }
            
            completion(characters, nil)
        }
    }
    
    func AllVehicles(completion: @escaping ([Vehicle], SWAPIError?) -> Void) {
        let endpoint = StarWars.data(type: .Vehicle)
        
        performRequest(with: endpoint) { results, error in
            guard let results = results else {
                completion([], error)
                return
            }
            
            let vehicles = results.compactMap { Vehicle(json: $0) }
            
            completion(vehicles, nil)
        }
    }
    
    func AllStarships(completion: @escaping ([Starship], SWAPIError?) -> Void) {
        let endpoint = StarWars.data(type: .Starship)
        
        performRequest(with: endpoint) { results, error in
            guard let results = results else {
                completion([], error)
                return
            }
            
            let starships = results.compactMap { Starship(json: $0) }
            
            completion(starships, nil)
        }
    }

    
    
    
    
    typealias Results = [[String: Any]]
    
    // MARK: Creating a data task
    //To create a data task that uses a completion handler, call the dataTask(with:) method of URLSession. Your completion handler needs to do three things:
    
    private func performRequest(with endpoint: Endpoint, completion: @escaping (Results?, SWAPIError?) -> Void) {
        
        // MARK: SWEET CLARITY :D
        
        /*
         
         
         1.  DO NOT FORGET TO DO THE FIRST STEP... AGAIN!!! -> Verify that the error parameter is nil. If not, a transport error has occurred; handle the error and exit.
         
         2.  THIS IS A BIGGIE!! -> Check the response parameter to verify that the status code indicates success and that the MIME type is an expected value. If not, handle the server error and exit.
         
         3. YOU GOT IT MATE :D -> Use the data instance as needed.
         
         */
        
        let task = downloader.jsonTask(with: endpoint.request) { json, error in
            DispatchQueue.main.async {
                //First step as described above
                guard let json = json else {
                    completion(nil, error)
                    return
                }
                // second step bro
                guard let results = json["results"] as? [[String: Any]] else {
                    completion(nil, .jsonParsingFailure(message: "JSON data does not contain results"))
                    return
                }
                // yep you got it dude!
                completion(results, nil)
            }
        }
        
        task.resume()
        
    }
}








/*
 MARK : Some expirements
 func searchForATerm(withName name: String, ofType Type: DataType, completion: @escaping ([Charcater], SWAPIError?) -> Void) {
 let endpoint = StarWars.search(name: name, type: Type)
 
 performRequest(with: endpoint) { results, error in
 guard let results = results else {
 completion([], error)
 return
 }
 var theTerm = [Allowable]()
 if Type == .Character {
 theTerm = results.flatMap { Character(json: $0) }
 } else if Type == .Vehicle {
 theTerm = results.flatMap { Vehicle(json: $0) }
 } else if Type == .Starship {
 theTerm = results.flatMap { Starship(json: $0) }
 }
 completion(theTerm, nil)
 }
 }
 
 */
