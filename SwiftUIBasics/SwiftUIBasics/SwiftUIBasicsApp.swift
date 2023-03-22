//
//  SwiftUIBasicsApp.swift
//  SwiftUIBasics
//
//  Created by Pavankumar  on 22/03/23.
//

import SwiftUI

@main
struct SwiftUIBasicsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
