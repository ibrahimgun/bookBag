//
//  BookDetailPresentation.swift
//  BookBag
//
//  Created by İbrahim Gün on 7.11.2021.
//

import Foundation
import BookBagAPI

struct BookDetailPresentation {
    let title: String
    let artistName: String
    let image: URL
    let genre: String
    
}

extension BookDetailPresentation {
    
    init(book: Book) {
        self.init(title: book.name, artistName: book.artistName, image: book.image, genre: book.genres.map( { $0.name }).joined(separator: ", "))
    }
}

