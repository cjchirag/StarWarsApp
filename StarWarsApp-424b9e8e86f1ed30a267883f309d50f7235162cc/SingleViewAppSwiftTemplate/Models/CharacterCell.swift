//
//  CharacterCell.swift
//  SingleViewAppSwiftTemplate
//
//  Created by chirag on 25/05/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class DetailCell: UITableViewCell {
    
    static let reuseIdentifier = "DetailCell"

    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Value: UILabel!
    @IBOutlet weak var SecondaryValue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
