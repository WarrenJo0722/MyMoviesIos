//
//  PosterView.swift
//  MyMovies
//
//  Created by Kihwan Jo on 10/14/26.
//

import SwiftUI

struct PosterView: View {
    let movie: Movie
    let onLikeTap: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                Color.clear
                    .frame(height: 600)
                    .overlay {
                        Image(movie.imageName)
                            .resizable()
                            .scaledToFill()
                    }
                    .clipped()
                
                Button(action: onLikeTap) {
                    Image(systemName: movie.isLiked ? "heart.fill" : "heart")
                        .font(.system(size: 24))
                        .foregroundColor(movie.isLiked ? .red : .white)
                        .padding(24)
                }
            }
            
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(movie.director) · \(movie.year)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("SF")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    PosterView(
        movie: Movie(title: "아바타", director: "제임스 카메론", year: 2025, genre: "SF", imageName: "avata"),
        onLikeTap: {}
    )
        .padding()
}
