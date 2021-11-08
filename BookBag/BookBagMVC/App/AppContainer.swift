//
//  AppContainer.swift
//  BookBag
//
//  Created by İbrahim Gün on 6.11.2021.
//

import Foundation
import BookBagAPI

let app = AppContainer()

final class AppContainer {
    
    let router = AppRouter()
    let service = TopBooksService()
}
