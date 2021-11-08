//
//  BookListViewController.swift
//  BookBag
//
//  Created by İbrahim Gün on 5.11.2021.
//

import UIKit
import BookBagAPI


final class BookListViewController: UIViewController {
    
    @IBOutlet weak var customView: BookListView! {
        didSet {
            customView.delegate = self
        }
    }
    
    var service: TopBookServiceProtocol = TopBooksService()
    private var bookList: [Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Top Paid Books"
        
        service.fetchTopBooks { [weak self] result in
            
            guard let `self` = self else { return }
            
            switch result {
            case .succes(let value):
                self.bookList = value.results
                let bookPresentations = value.results.map(BookPresentation.init)
                self.customView.updateBookList(bookPresentations)
            case .failure(let error):
                print(error)
            }
        }
    }
}

extension BookListViewController: BookListViewDelegate {
    func didSelectBook(at index: Int) {
        let book = bookList[index]
        let bookDetailViewController = BookDetailBuilder.make(with: book)
        show(bookDetailViewController, sender: nil)
    }
}
