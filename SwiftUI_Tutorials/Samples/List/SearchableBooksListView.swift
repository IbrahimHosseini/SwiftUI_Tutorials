//
//  SearchableBooksListView.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 2/1/23.
//

import SwiftUI

struct SearchableBooksListView: View {
    @StateObject var viewModel = SearchableBookViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.books, id: \.id) { book in
                SearchableBooksRowView(book: book)
            }
            .refreshable {
                print("refreshed view")
            }
            .searchable(text: $viewModel.searchTerm)
            .autocapitalization(.none)
        }
    }
}

struct SearchableBooksRowView: View {
    var book: Book
    
    var body: some View {
        HStack(alignment: .top) {
            Image(book.mediumCoverImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 90)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                Text("by \(book.author)")
                    .font(.subheadline)
                Text("\(book.pages) pages")
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

struct SearchableBooksListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchableBooksListView()
    }
}
