//
//  DetailController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-24.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class DetailController: UITableViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    
    let client = SWAPIClient()
    var names: [String]?
    
    @IBOutlet weak var collectionType: UILabel!
    @IBOutlet weak var name: UILabel!
    
    func definition() {
        if optionSelected == DataType.Character {
            collectionType.text = "Character"
            client.AllCharacters() { allData, error in
                for character in allData {
                    self.names?.append(character.name)
                }
            }
        }
    }
    
}
