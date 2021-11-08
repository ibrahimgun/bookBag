//
//  BookDetailBuilder.swift
//  BookBag
//
//  Created by İbrahim Gün on 7.11.2021.
//
import UIKit
import BookBagAPI

final class BookDetailBuilder {
    
    static func make(with book: Book) -> BookDetailViewController {
        
        let storyboard = UIStoryboard(name: "BookDetail", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "BookDetailViewController") as! BookDetailViewController
        viewController.book = book
        return viewController
    }
}
