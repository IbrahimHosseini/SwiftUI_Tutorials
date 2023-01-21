//
//  LandmarkRow.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 1/21/23.
//

import SwiftUI

struct LandmarkRow: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack(alignment: .center) {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(15)

            Text(landmark.name)
            
            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
