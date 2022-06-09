//
//  MusicApp.swift
//  Music WatchKit Extension
//
//  Created by Adit on 08/10/21.
//

import SwiftUI

@main
struct MusicApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
