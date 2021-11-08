//
//  Book.swift
//  BookBagAPI
//
//  Created by İbrahim Gün on 4.11.2021.
//

import Foundation

public struct Book: Decodable {
    
    public enum CodingKeys: String, CodingKey {
        case artistName
        case releaseDate
        case name
        case image = "artworkUrl100"
        case genres
    }
    public let artistName: String
    public let releaseDate: Date
    public let name: String
    public let image: URL
    public let genres: [Genre]
}

public struct Genre: Decodable {
    public let name: String
}
