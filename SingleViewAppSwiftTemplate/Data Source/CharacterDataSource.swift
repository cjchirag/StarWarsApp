//
//  DetailDataSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-24.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class CharacterDataSource: NSObject, UITableViewDataSource {
    
    private var data: Character
    
    init(theCharacter: Character) {
        self.data = theCharacter
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailCell.reuseIdentifier, for: indexPath) as! DetailCell
        
        if indexPath.row == 0 {
            cell.Title.text = "Born"
            cell.Value.text = data.born
            cell.SecondaryValue.isHidden = true
        } else if indexPath.row == 1 {
            cell.Title.text = "Home"
            cell.Value.text = data.home
            cell.SecondaryValue.isHidden = true
        } else if indexPath.row == 2 {
            cell.Title.text = "Height"
            cell.Value.text = data.height
            cell.SecondaryValue.isHidden = false
            cell.SecondaryValue.text = "\(data.HeightMetric)"
        } else if indexPath.row == 3 {
            cell.Title.text = "Eye"
            cell.Value.text = data.eyeColor
            cell.SecondaryValue.isHidden = true
        }else if indexPath.row == 4 {
            cell.Title.text = "Hair"
            cell.Value.text = data.hairColor
            cell.SecondaryValue.isHidden = true
        }
        
        return cell
    }
    
    func update(with character: Character) {
        self.data = character
    }
    
}
