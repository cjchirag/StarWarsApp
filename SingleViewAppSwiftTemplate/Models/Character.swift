//
//  Character.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-21.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var born: String
    var home: String
    var height: String
    var eyeColor: String
    var hairColor: String
    var vehicles: [String]
    var starships: [String]
    var films: [String]
    
    init(Name: String, Born: String, Home: String, Height: String, EyeColor: String, HairColor: String, Vehicles: [String], Starships: [String], Films: [String]) {
        self.name = Name
        self.born = Born
        self.home = Home
        self.height = Height
        self.eyeColor = EyeColor
        self.hairColor = HairColor
        self.vehicles = Vehicles
        self.starships = Starships
        self.films = Films
    }
}

extension Character {
    convenience init?(json: [String: Any]) {
        
        struct Key {
            static let name = "name"
            static let birth_year = "birth_year"
            static let homeworld = "homeworld"
            static let height = "height"
            static let eye_color = "eye_color"
            static let hair_color = "hair_color"
            static let vehicles = "vehicles"
            static let starships = "starships"
            static let films = "films"
        }
        
        guard let birth_year = json[Key.birth_year] as? String,
            let homeworld = json[Key.homeworld] as? String,
            let height = json[Key.height] as? String,
            let eye_color = json[Key.eye_color] as? String,
            let hair_color = json[Key.hair_color] as? String,
            let name = json[Key.name] as? String,
            let vehicles = json[Key.vehicles] as? [String], let starships = json[Key.starships] as? [String], let films = json[Key.films] as? [String]
            else {
                return nil
        }
        
        self.init(Name: name, Born: birth_year, Home: homeworld, Height: height, EyeColor: eye_color, HairColor: hair_color, Vehicles: vehicles, Starships: starships, Films: films)
    }
}
