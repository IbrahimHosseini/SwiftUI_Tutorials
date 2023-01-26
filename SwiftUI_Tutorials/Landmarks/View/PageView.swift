//
//  PageView.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/27/23.
//

import SwiftUI

struct PageView<Page: View>: View {

    var pages: [Page]

    @State var currentPage = 0

    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current page: \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0)})
            .aspectRatio(3/2, contentMode: .fit)
    }
}
