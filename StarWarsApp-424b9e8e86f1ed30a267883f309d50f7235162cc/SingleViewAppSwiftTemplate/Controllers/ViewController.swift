//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 1/1/19.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

var optionSelected: DataType?

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
        performSegue(withIdentifier: "LetsGo", sender: nil)
    }
    @IBAction func VehicleAction(_ sender: Any) {
        optionSelected = DataType.Vehicle
        performSegue(withIdentifier: "LetsGo", sender: nil)
    }
    @IBAction func StarshipAction(_ sender: Any) {
        optionSelected = DataType.Starship
        performSegue(withIdentifier: "LetsGo", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToCharacter" {
            let DetailController = segue.destination as! DetailController
            DetailController.collectionType.text = "Character"
            client.AllCharacters() { allData, error in
                for character in allData {
                    DetailController.names.append(character.name)
                }
            }
        }
    }
}

