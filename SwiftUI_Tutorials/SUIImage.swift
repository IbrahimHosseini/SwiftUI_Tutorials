//
//  SUIImage.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 1/15/23.
//

import SwiftUI

struct SUIImage: View {
    let rainbowColors: [Color] = [.red, .orange, .yellow, .green, .blue, .teal, .purple]
    
    var body: some View {
        VStack (spacing: 16) {
            
            Image("img")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 100)
                .clipShape(Capsule())
                .overlay {
                    Capsule().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
                .opacity(0.8)
            
            Image(systemName: "tortoise.fill")
                .font(.custom("", size: 100))
                .foregroundColor(.indigo)
            
            Capsule()
                .fill(AngularGradient(gradient: Gradient(colors: rainbowColors),
                                     center: .center))
            
            Circle()
                .fill(RadialGradient(colors: rainbowColors,
                                     center: .center,
                                     startRadius: 0,
                                     endRadius: 30))
            
            Ellipse()
                .foregroundColor(.pink)
                
            Rectangle()
                .foregroundColor(.cyan)
            
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.brown)
        }
        .padding()
    }
}

struct SUIImage_Previews: PreviewProvider {
    static var previews: some View {
        SUIImage()
    }
}
