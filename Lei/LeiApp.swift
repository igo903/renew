//
//  LeiApp.swift
//  Lei
//
//  Created by Xinxing Jiang on 2024/7/7.
//

import SwiftUI
import SwiftData

@main
struct LeiApp: App {
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
    
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
//            ContentView()
            HomeView()
                .background(Color(red: 44.0/255, green: 22.0/255, blue: 91.0/255))
                .environment(modelData)
        }
        .modelContainer(sharedModelContainer)
    }
}
