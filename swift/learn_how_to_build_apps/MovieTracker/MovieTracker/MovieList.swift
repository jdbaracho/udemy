//
//  MovieList.swift
//  MovieTracker
//
//  Created by João Domingos Baracho on 15/04/2026.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject var movieStorage: MovieStorage

    var body: some View {
        NavigationView {
            List(movieStorage.movies) { movie in
                NavigationLink(
                    destination: MovieDetail(
                        movie: movie,
                        newMovie: false
                    )
                ) {
                    Text(movie.title)
                }
            }
            .navigationBarTitle("Movies")
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: MovieDetail(
                            movie: Movie(),
                            newMovie: true
                        )
                    ) {
                        Image(systemName: "plus")
                    }
            )
        }
    }
}

#Preview {
    MovieList().environmentObject(MovieStorage())
}
