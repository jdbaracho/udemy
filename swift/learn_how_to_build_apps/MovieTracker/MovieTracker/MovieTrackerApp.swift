//
//  MovieTrackerApp.swift
//  MovieTracker
//
//  Created by João Domingos Baracho on 15/04/2026.
//

import SwiftUI
import CoreData

@main
struct MovieTrackerApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var movieStorage = MovieStorage()

    var body: some Scene {
        WindowGroup {
            MovieList()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(movieStorage)
        }
    }
}
