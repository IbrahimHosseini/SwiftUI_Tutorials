//
//  SUIButton.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 1/18/23.
//

import SwiftUI

struct SUIButton: View {
    var body: some View {
        VStack(spacing: 32) {
            Button("Tap on me") {
                print("Tapped on me")
            }
            
            Button {
                print("Tap on me in different way")
            } label: {
                Text("Tap on me in different way")
                    .fontWeight(.bold)
                    .foregroundColor(.indigo)
                    .padding()
                    .border(.indigo, width: 2)
            }
            
            Button {
                print("Play")
            } label: {
                Label("Play", systemImage: "play.fill")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                    .padding()
                    .border(.pink, width: 2)
            }
            
            Button {
                print("pause")
            } label: {
                Image("hotspot")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.pink)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.teal, lineWidth: 4))
            }
        }
        
    }
}

struct SUIButton_Previews: PreviewProvider {
    static var previews: some View {
        SUIButton()
    }
}
