//
//  SUIGestures.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/20/23.
//

import SwiftUI

struct SUIGestures: View {

    @State private var changeMe = false

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 300, height: 200)
                .foregroundColor(changeMe ? .red : .green)
                .onTapGesture(count: 2) {
                    changeMe.toggle()
                }
        }
    }
}

struct SUIGestures_Previews: PreviewProvider {
    static var previews: some View {
        SUIGestures()
    }
}
