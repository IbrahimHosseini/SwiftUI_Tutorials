//
//  SUILabel.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 1/18/23.
//

import SwiftUI

struct SUILabel: View {
    var body: some View {
        VStack {
            Label("label with system image", systemImage: "hare.fill")
                .labelStyle(.automatic)
                .border(.brown)
            
            
            Spacer(minLength: 16)
            Label("label with image", image: "carpentry")
                .font(.headline)
            Spacer(minLength: 16)
            Label {
                Text("first label")
                    .bold()
                Text("second label")
                    .fontWeight(.light)
            } icon: {
                Image(systemName: "hare.fill")
                    .foregroundColor(.accentColor)
                Image(systemName: "square.and.arrow.down.on.square.fill")
                    .foregroundColor(.brown)
                Image(systemName: "bolt.square.fill")
                    .foregroundColor(.gray)
            }
            .padding()
            .border(.teal, width: 4)

        }
    }
}

struct SUILabel_Previews: PreviewProvider {
    static var previews: some View {
        SUILabel()
    }
}
