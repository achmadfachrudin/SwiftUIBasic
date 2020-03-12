//
//  Movie.swift
//  SwiftUIBasic
//
//  Created by Kitabisa.com on 12/03/20.
//  Copyright © 2020 fachrudin. All rights reserved.
//

import Foundation

public struct MoviesResponse: Codable {
    public let page: Int
    public let results: [Movie]
}

public struct Movie: Codable, Identifiable  {
    public let id: Int
    public let title: String
    public let posterPath: String?
    public let overview: String?
    public let releaseDate: String?
    public var posterURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500\(posterPath ?? "")")!
    }
}

