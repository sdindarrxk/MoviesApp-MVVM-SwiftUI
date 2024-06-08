//
//  Movie.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class Movie: Identifiable {
    var id: String?
    var name: String?
    var year: String?
    var image: String?
    var category: Category?
    var director: Director?
    
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
