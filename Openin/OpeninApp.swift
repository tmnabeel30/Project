//
//  OpeninApp.swift
//  Openin
//
//  Created by Nabeel on 19/04/24.
//

import SwiftUI

@main
struct OpeninApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
