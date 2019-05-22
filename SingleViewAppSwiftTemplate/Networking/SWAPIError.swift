//
//  SWAPIError.swift
//  SingleViewAppSwiftTemplate
//
//  Created by LOGIN on 2019-05-22.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

enum SWAPIError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailure(message: String)
}
