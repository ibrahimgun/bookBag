//
//  BookTests.swift
//  BookBagAPITests
//
//  Created by İbrahim Gün on 4.11.2021.
//

import XCTest
@testable import BookBagAPI

class BookTests: XCTestCase {

    func testParsing() throws {
        let bundle = Bundle(for: BookTests.self)
        let url = bundle.url(forResource: "book", withExtension: "json")!
        let data = try Data(contentsOf: url)
        let decoder = Decoders.plainDateDecoder
        let book = try decoder.decode(Book.self, from: data)
        print(book)
        
        XCTAssertEqual(book.artistName, "Frank Herbert")
        XCTAssertEqual(book.name, "Dune")
        XCTAssertEqual(book.genres.first?.name, "Classics")
        XCTAssertEqual(book.genres.count, 1)  
    }
    

}
