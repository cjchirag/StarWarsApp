//
//  DetailController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-24.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class DetailController: UIViewController {
    
    var AllPersons = [Character]()
    var AllVehicles = [Vehicle]()
    var AllStarships = [Starship]()
    let client = SWAPIClient()
    
    /*
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return names[component]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        client.searchForCharacter(withName: names[row]) { CharacterData, error in
            let viewModel = CharacterViewModel(selectedPerson: self.AllCharacters[row])
            self.PersonViewModel = viewModel
        }
    }
 */
    
    enum Errorsinapp: Error {
        case doesnotcontain
    }
    
    func configure(with object: AllowData){
        
        guard let thePerson = object as? Character else {
            return
        }
        let viewModel = CharacterViewModel(selectedPerson: thePerson)
       // self.PersonViewModel = viewModel
        /*
       UI Implementation
        */
    }
}

