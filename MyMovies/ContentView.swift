//
//  ContentView.swift
//  MyMovies
//
//  Created by Kihwan Jo on 10/14/26.
//

import SwiftUI

struct ContentView: View {
    @State private var movies = Movie.samples
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(movies) { movie in
                        PosterView(movie: movie) {
                            let index = movies.firstIndex(where: { item in
                                item.id == movie.id
                            })
                            
                            if (index != nil) {
                                movies[index!].isLiked.toggle()
                            }
                        }
                    }
                    
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("My Movies")
            .toolbar { Text("좋아요: \(movies.filter { $0.isLiked }.count)") }
        }
    }
}

#Preview {
    ContentView()
}
