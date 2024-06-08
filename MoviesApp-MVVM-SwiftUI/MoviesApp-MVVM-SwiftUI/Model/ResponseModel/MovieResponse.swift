//
//  MovieResponse.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class MovieResponse: Codable {
    var list: [Movie]?
    var success: Int?
    
    enum CodingKeys: String, CodingKey {
        case list = "filmler"
        case success
    }
}
