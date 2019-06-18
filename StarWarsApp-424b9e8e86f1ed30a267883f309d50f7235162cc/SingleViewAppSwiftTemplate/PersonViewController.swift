//
//  PersonViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by chirag on 17/06/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class PersonViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let client = SWAPIClient()
    var Persons = [String]()
    
    override func viewDidLoad() {
        print(loadCount())
        loadPeople(row: 0)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "String"
    }
    
    @IBOutlet weak var PersonSelection: UIPickerView!
    
    func loadPeople(row: Int) {
        var PersonsName = "Name"
        client.AllCharacters() { allData, error in
            PersonsName = allData[row].name
        }
        print(PersonsName)
        self.Persons.append(PersonsName)
    }

    func loadCount() -> Int {
        var count: Int = 0
        client.AllCharacters() { allData, error in
            count = allData.count
        }
        return count
    }
    
}
