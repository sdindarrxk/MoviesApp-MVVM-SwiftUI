//
//  Category.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class Category: Identifiable {
    var id: String?
    var name: String?
    
    init() {
        
    }
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
