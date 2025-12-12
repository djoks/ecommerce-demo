//
//  ecommerceDemoApp.swift
//  ecommerceDemo
//
//  Created by user275733 on 12/3/25.
//

import SwiftUI
import SwiftData

@main
struct EcommerceDemoApp: App {

    // MARK: - SwiftData container
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self    // Add all your SwiftData models here
        ])

        let config = ModelConfiguration(
            schema: schema,
            isStoredInMemoryOnly: false
        )

        do {
            return try ModelContainer(
                for: schema,
                configurations: [config]
            )
        } catch {
            fatalError("Failed to load ModelContainer: \(error)")
        }
    }()

    // MARK: - App Entry Point
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ProductListView()  // 👈 Your actual starting screen
            }
        }
        .modelContainer(sharedModelContainer)
    }
}
