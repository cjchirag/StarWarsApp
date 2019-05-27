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

class CharacterViewModel: DataViewModel {
    var ThePerson: Character
    var born: String
    var home: String
    var height: String
    var eyecolor: String
    var haircolor: String
    
    init(selectedPerson: Character) {
        self.ThePerson = selectedPerson
        self.born = selectedPerson.born
        self.home = selectedPerson.home
        self.height = selectedPerson.height
        self.eyecolor = selectedPerson.eyeColor
        self.haircolor = selectedPerson.hairColor
    }
    
}
