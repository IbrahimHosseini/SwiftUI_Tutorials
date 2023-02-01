//
//  LandmarkList.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 1/21/23.
//

import SwiftUI

struct LandmarkList: View {

    @EnvironmentObject var modelData: ModelData

    @State private var showFavoriteOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { (!showFavoriteOnly || $0.isFavorite) }
    }


    var body: some View {
        NavigationView {

            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorite Only")
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }

                }
            }
            .navigationTitle("Landmarks")
            .frame(minWidth: 300)
        }
    }

}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
