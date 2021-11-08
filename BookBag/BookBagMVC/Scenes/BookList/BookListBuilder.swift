//
//  BookListBuilder.swift
//  BookBag
//
//  Created by İbrahim Gün on 6.11.2021.
//

import UIKit

final class BookListBuilder {
    
    static func make() -> BookListViewController {
        let storyboard = UIStoryboard(name: "BookList", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "BookListViewController") as! BookListViewController
        viewController.service = app.service
        return viewController
    }
}
