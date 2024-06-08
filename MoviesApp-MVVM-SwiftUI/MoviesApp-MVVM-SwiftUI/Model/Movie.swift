//
//  Movie.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class Movie: Identifiable, Codable {
    var id: String?
    var name: String?
    var year: String?
    var image: String?
    var category: Category?
    var director: Director?
    
    enum CodingKeys: String, CodingKey {
        case id = "film_id"
        case name = "film_ad"
        case year = "film_yil"
        case image = "film_resim"
        case category = "kategori"
        case director = "yonetmen"
    }
    
    init() {
        
    }
    
    init(id: String, name: String, year: String, image: String, category: Category, director: Director) {
        self.id = id
        self.name = name
        self.year = year
        self.image = image
        self.category = category
        self.director = director
    }
}
