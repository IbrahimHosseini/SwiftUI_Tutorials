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
    @State private var filter = FilterCategory.all

    enum FilterCategory: String, CaseIterable, Identifiable {
        case all = "All"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"

        var id: FilterCategory { self }
    }

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { (!showFavoriteOnly || $0.isFavorite) && (filter == .all || filter.rawValue == $0.category.rawValue)

        }
    }

    var title: String {
        let title = filter == .all ? "Landmarks" : filter.rawValue
        return showFavoriteOnly ? "Favorite \(title)" : title
    }

    var body: some View {
        NavigationView {

            List {
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }

                }
            }
            .navigationTitle(title)
            .frame(minWidth: 300)
            .toolbar {
                ToolbarItem {
                    Menu {
                        Picker("Category", selection: $filter) {
                            ForEach(FilterCategory.allCases) {
                                Text($0.rawValue).tag($0)
                            }
                        }
                        .pickerStyle(.inline)

                        Toggle(isOn: $showFavoriteOnly) {
                            Text("Favorite Only")
                        }
                    } label: {
                        Label("Filter", systemImage: "slider.horizontal.3")
                    }
                }
            }

            Text("Select a Landmark")
        }
    }

}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
