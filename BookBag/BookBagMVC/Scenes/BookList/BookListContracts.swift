//
//  BookListContracts.swift
//  BookBag
//
//  Created by İbrahim Gün on 5.11.2021.
//

import Foundation

protocol BookListViewProtocol {
    var delegate: BookListViewDelegate? { get set }
    func updateBookList(_ bookList: [BookPresentation])
}

protocol BookListViewDelegate: AnyObject {
    func didSelectBook(at index: Int)
}

