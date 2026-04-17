//
//  MovieDetail.swift
//  MovieTracker
//
//  Created by João Domingos Baracho on 15/04/2026.
//

import CoreData
import SwiftUI

struct MovieDetail: View {
    @State var movie: Movie
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var movieStorage: MovieStorage
    let newMovie: Bool

    var body: some View {
        List {
            Section {
                SectionTitle(title: "Title")
                TextField("Movie Title", text: $movie.title)
            }
            Section {
                SectionTitle(title: "Rating")
                HStack {
                    Spacer()
                    Text(String(repeating: "★", count: Int(movie.rating)))
                        .foregroundColor(.yellow)
                        .font(.title)
                    Spacer()
                }.accessibilityLabel(Text("\(Int(movie.rating)) star rating"))
                Slider(value: $movie.rating, in: 1...5, step: 1)
                    .accessibilityValue(Text("\(Int(movie.rating))"))
            }
            Section {
                SectionTitle(title: "Seen")
                Toggle(
                    "I have seen \(movie.title.isEmpty ? movie.title : "this movie")",
                    isOn: $movie.seen
                )
            }
            Section {
                Button(action: {
                    if newMovie {
                        movieStorage.movies.append(movie)
                    } else {
                        for i in 0..<movieStorage.movies.count
                        where movieStorage.movies[i].id == self.movie.id {
                            movieStorage.movies[i] = movie
                        }
                    }
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }.disabled(movie.title.isEmpty)
            }
        }
    }
}

struct SectionTitle: View {
    var title: String
    var body: some View {
        Text(title).font(.caption).foregroundColor(.green)
    }
}

#Preview {
    MovieDetail(movie: Movie(), newMovie: true)
}
