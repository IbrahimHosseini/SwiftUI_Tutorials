//
//  SUIImage.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 1/15/23.
//

import SwiftUI

struct SUIImage: View {
    var body: some View {
        Image("img")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct SUIImage_Previews: PreviewProvider {
    static var previews: some View {
        SUIImage()
    }
}
