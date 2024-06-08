//
//  MovieFirebase.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class MovieFirebase: Identifiable {
    var id: String?
    var name: String?
    var year: Int?
    var image: String?
    var categoryName: String?
    var directorName: String?
    
    init() {
        
    }
    
    init(id: String, name: String, year: Int, image: String, categoryName: String, directorName: String) {
        self.id = id
        self.name = name
        self.year = year
        self.image = image
        self.categoryName = categoryName
        self.directorName = directorName
    }
}
