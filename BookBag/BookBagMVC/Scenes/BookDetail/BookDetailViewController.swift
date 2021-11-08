//
//  BookDetailViewController.swift
//  BookBag
//
//  Created by İbrahim Gün on 7.11.2021.
//
import UIKit
import BookBagAPI

final class BookDetailViewController: UIViewController {
    
    
    @IBOutlet var customView: BookDetailView!
    var book: Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.updateBookDetail(BookDetailPresentation(book: book))
    }
}
