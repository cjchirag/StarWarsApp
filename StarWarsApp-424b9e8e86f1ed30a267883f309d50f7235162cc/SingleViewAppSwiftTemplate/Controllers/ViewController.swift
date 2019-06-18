//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 1/1/19.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

var optionSelected: DataType?
var count = 0
var AllPeoples = [Character]()

class ViewController: UIViewController {
    var Data = [Character]()
    var client = SWAPIClient()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CharacterAction(_ sender: Any) {
        optionSelected = DataType.Character
        client.AllCharacters(){ allData, error in
            count = allData.count
        }
    }
    @IBAction func VehicleAction(_ sender: Any) {
        optionSelected = DataType.Vehicle
    }
    
    @IBAction func StarshipAction(_ sender: Any) {
        optionSelected = DataType.Starship
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
        if segue.identifier == "ToPersons" {
            let PersonController = segue.destination as! PersonViewController
            client.AllCharacters() { allData, error in
                for character in allData {
                    self.Data.append(character)
                    PersonController.AllPersons?.append(character)
                    AllPeoples.append(character)
                }
            }
        } else if segue.identifier == "ToVehicle" {
            let DetailController = segue.destination as! DetailController
            client.AllVehicles() { allData, error in
                for vehicle in allData {
                    DetailController.AllVehicles.append(vehicle)
                }
            }
        }
        */
    }
}
