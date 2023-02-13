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
            ContentView()
                .environmentObject(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarksCommands()
        }
        #endif

        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
