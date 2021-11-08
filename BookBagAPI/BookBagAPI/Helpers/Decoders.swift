//
//  Decoders.swift
//  BookBagAPI
//
//  Created by İbrahim Gün on 4.11.2021.
//

import Foundation

public enum Decoders {
    static let plainDateDecoder: JSONDecoder = {
//        1975-09-01
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }()
}
