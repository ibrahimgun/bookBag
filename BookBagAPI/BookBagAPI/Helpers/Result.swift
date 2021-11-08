//
//  Result.swift
//  BookBagAPI
//
//  Created by İbrahim Gün on 4.11.2021.
//

import Foundation

public enum Result<Value> {
    case succes(Value)
    case failure(Error)
}
