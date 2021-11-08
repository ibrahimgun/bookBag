//
//  BookListView.swift
//  BookBag
//
//  Created by İbrahim Gün on 5.11.2021.
//

import UIKit

final class BookListView: UIView {
    
    weak var delegate: BookListViewDelegate?
    private var bookList: [BookPresentation] = []
    @IBOutlet private weak var tableView: UITableView!
}

extension BookListView: BookListViewProtocol {
    
    func updateBookList(_ bookList: [BookPresentation]) {
        self.bookList = bookList
        tableView.reloadData()
    }
}

extension BookListView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookListCell", for: indexPath)
        let book = bookList[indexPath.row]
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.detail
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
    
    
}

extension BookListView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectBook(at: indexPath.row)
    }
}
