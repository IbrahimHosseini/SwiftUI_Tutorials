//
//  ContentView.swift
//  WatchLandmark Watch App
//
//  Created by Ibrahim Hosseini on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
