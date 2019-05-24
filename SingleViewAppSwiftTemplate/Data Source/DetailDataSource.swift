//
//  DetailDataSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-24.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

enum ErrorsInApp: Error {
    case noOptionSelected
}

class DetailDataSource: NSObject, UITableViewDataSource{
    
    private var data: [AllowData]
    
    init(datas: [Allowable])
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }
    
    
    
    
}
