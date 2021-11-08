//
//  TopBooksService.swift
//  BookBagAPI
//
//  Created by İbrahim Gün on 4.11.2021.
//

import Foundation
import Alamofire

public protocol TopBookServiceProtocol {
    func fetchTopBooks(completion: @escaping (Result<TopBooksResponse>) -> Void)
}

public class TopBooksService: TopBookServiceProtocol {
    
    public enum Error: Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    public init() {
        
    }
    
    public func fetchTopBooks(completion: @escaping (Result<TopBooksResponse>) -> Void) {
        let urlString = "https://rss.applemarketingtools.com/api/v2/us/books/top-paid/25/books.json"
        
        AF.request(urlString).responseData { (response) in
            switch response.result {
            case .success(let data):
                let decoder = Decoders.plainDateDecoder
                do {
                    let response = try decoder.decode(TopBooksResponse.self, from: data)
                    completion(.succes(response))
                } catch {
                    completion(.failure(Error.serializationError(internal: error)))
                }

            case .failure(let error):
                completion(.failure(Error.networkError(internal: error)))
            }
        }
    }
}
