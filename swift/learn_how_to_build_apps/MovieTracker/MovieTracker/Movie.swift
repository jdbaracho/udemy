//
//  Movie.swift
//  MovieTracker
//
//  Created by João Domingos Baracho on 15/04/2026.
//

import Foundation
internal import Combine

struct Movie: Identifiable {
    var id = UUID()
    var title = ""
    var rating = 3.0
    var seen = false
}

class MovieStorage: ObservableObject {
    @Published var movies = [Movie]()
}
