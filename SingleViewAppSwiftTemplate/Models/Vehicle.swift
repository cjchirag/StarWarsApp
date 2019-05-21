//
//  Vehicle.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-21.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

class Vehicle {
    var Name: String
    var Make: String
    var cost_credits: String
    var Length: String
    var Class: String
    var Crew: String
    var Model: String
    var CargoCapacity: String
    var Passengers: String
    var Max_Speed: String
    var films: [String]
    
    init(Name: String, Make: String, CostInCredits: String, Length: String, Class: String, Crew: String, Model: String, CargoCap: String, Passengers: String, MaxSpeed: String, films: [String]) {
        self.Name = Name
        self.Make = Make
        self.cost_credits = CostInCredits
        self.Length = Length
        self.Class = Class
        self.Crew = Crew
        self.Model = Model
        self.CargoCapacity = CargoCap
        self.Passengers = Passengers
        self.Max_Speed = MaxSpeed
        self.films = films
    }
}

extension Vehicle {
    convenience init?(json: [String: Any]) {
        
        struct Key {
            static let name = "name"
            static let model = "model"
            static let manufacturer = "manufacturer"
            static let cost_in_credits = "cost_in_credits"
            static let length = "length"
            static let max_atmosphering_speed = "max_atmosphering_speed"
            static let crew = "crew"
            static let passengers = "passengers"
            static let cargo_capacity = "cargo_capacity"
            static let vehicle_class = "vehicle_class"
            static let films = "films"
        }
        
        guard let name = json[Key.name] as? String,let model = json[Key.model] as? String, let manufacturer = json[Key.manufacturer] as? String, let cost_in_credits = json[Key.cost_in_credits] as? String, let length = json[Key.length] as? String, let max_atmosphering_speed = json[Key.max_atmosphering_speed] as? String, let crew = json[Key.crew] as? String, let passengers = json[Key.passengers] as? String,let cargo_capacity = json[Key.cargo_capacity] as? String, let vehicle_class = json[Key.vehicle_class] as? String, let films = json[Key.films] as? [String] else {
                return nil
        }
        self.init(Name: name, Make: manufacturer, CostInCredits: cost_in_credits, Length: length, Class: vehicle_class, Crew: crew, Model: model, CargoCap: cargo_capacity, Passengers: passengers, MaxSpeed: max_atmosphering_speed, films: films)
    }
}
