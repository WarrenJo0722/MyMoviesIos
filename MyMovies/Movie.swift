//
//  Movie.swift
//  MyMovies
//
//  Created by Kihwan Jo on 10/14/26.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let director: String
    let year: Int
    let genre: String
    let imageName: String
    var isLiked: Bool = false
}

extension Movie {
    static let samples: [Movie] = [
        Movie(title: "아바타", director: "제임스 카메론", year: 2025, genre: "SF", imageName: "avata"),
        Movie(title: "인셉션", director: "크리스토퍼 놀란", year: 2025, genre: "SF", imageName: "inception"),
        Movie(title: "인터스텔라", director: "크리스토퍼 놀란", year: 2025, genre: "SF", imageName: "interstellar"),
        Movie(title: "기생충", director: "봉준호", year: 2025, genre: "드라마", imageName: "parasite")
    ]
}





















