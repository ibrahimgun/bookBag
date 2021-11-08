//
//  TopBooksResponse.swift
//  BookBagAPI
//
//  Created by İbrahim Gün on 4.11.2021.
//

import Foundation

public struct TopBooksResponse: Decodable {
    
    private enum RootCodingKeys: String, CodingKey {
        case feed
    }
    
    private enum FeedCodingKeys: String, CodingKey {
        case results
    }
    
    public let results: [Book]
    
    public init(from decoder: Decoder) throws {
        let rootContainer = try decoder.container(keyedBy: RootCodingKeys.self)
        let feedContainer = try rootContainer.nestedContainer(keyedBy: FeedCodingKeys.self, forKey: .feed)
        self.results = try feedContainer.decode([Book].self, forKey: .results)
        
    }
}
