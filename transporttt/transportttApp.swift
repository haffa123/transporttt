//
//  transportttApp.swift
//  transporttt
//
//  Created by haffa dhifi on 4/11/2023.
//

import SwiftUI

@main
struct transportttApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
