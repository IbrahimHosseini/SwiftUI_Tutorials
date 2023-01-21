//
//  SwiftUI_TutorialsApp.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/14/23.
//

import SwiftUI

@main
struct SwiftUI_TutorialsApp: App {

    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environmentObject(modelData)
        }
    }
}
