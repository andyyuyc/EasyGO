//
//  EasyGOApp.swift
//  EasyGO
//
//  Created by Andy Yu on 4/10/24.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct EasyGOApp: App {
    
    @UIApplicationDelegateAdaptor(NotificationDelegate.self) var notificationDelegate
    
    init(){
            FirebaseApp.configure()
        }
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
