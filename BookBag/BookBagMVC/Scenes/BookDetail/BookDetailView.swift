//
//  BookDetailView.swift
//  BookBag
//
//  Created by İbrahim Gün on 7.11.2021.
//

import UIKit

final class BookDetailView: UIView {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var genreLabel: UITextView!
    
    
    
}

extension BookDetailView: BookDetailViewProtocol {
    
    func updateBookDetail(_ bookDetail: BookDetailPresentation) {
        bookTitleLabel.text = bookDetail.title
        artistNameLabel.text = bookDetail.artistName
        genreLabel.text = bookDetail.genre
        if let data = try? Data(contentsOf: bookDetail.image) {
                imageView.image = UIImage(data: data)
            }
    }
    
    
}

