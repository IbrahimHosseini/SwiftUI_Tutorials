//
//  SearchableBookViewModel.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 2/1/23.
//

import Foundation
import Combine

private extension String {
  func matches(_ searchTerm: String) -> Bool {
    self.range(of: searchTerm, options: .caseInsensitive) != nil
  }
}

class SearchableBookViewModel: ObservableObject {
    @Published private var originalBooks = Book.samples
    @Published var searchTerm: String = ""
    
    @Published var books = [Book]()
    
    init() {
        Publishers.CombineLatest($originalBooks, $searchTerm)
            .map { books, searchTerm in
                books.filter { book in
                    searchTerm.isEmpty
                    ? true
                    : (book.title.matches(searchTerm)
                       || book.author.matches(searchTerm))
                }
            }
            .assign(to: &$books)
    }
}

struct Book: Hashable, Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var isbn: String
    var pages: Int
    var isRead = false
}

extension Book {
  var smallCoverImageName: String { return "\(isbn)-S" }
  var mediumCoverImageName: String { return "\(isbn)-M" }
  var largeCoverImageName: String { return "\(isbn)-L" }
}

extension Book {
  static let samples = [
    Book(title: "Changer", author: "Matt Gemmell", isbn: "9781916265202", pages: 476),
    Book(title: "SwiftUI for Absolute Beginners", author: "Jayant Varma", isbn: "9781484255155", pages: 200),
    Book(title: "Why we sleep", author: "Matthew Walker", isbn: "9780141983769", pages: 368),
    Book(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams", isbn: "9780671461492", pages: 216)
  ]
}
