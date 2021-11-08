//
//  BookPresentation.swift
//  BookBag
//
//  Created by İbrahim Gün on 6.11.2021.
//

import Foundation
import BookBagAPI

struct BookPresentation {
    let title: String
    let detail: String
}

extension BookPresentation {
    
    init(book: Book) {
        self.init(title: book.name, detail: book.artistName)
    }
}
