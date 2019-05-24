//
//  Character.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-24.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

protocol DataViewModel {
    
}

struct CharacterDataViewModel: DataViewModel {
    var name: String
    var born: String
    var home: String
    var height: String
    var eyes: String
    var hair: String
    var metricHeight: Int
}

extension CharacterDataViewModel {
    init(character: Character){
        self.name = character.name
        self.born = character.born
        self.home = character.home
        self.height = character.height
        self.eyes = character.eyeColor
        self.hair = character.hairColor
        self.metricHeight = character.HeightMetric
    }
}
