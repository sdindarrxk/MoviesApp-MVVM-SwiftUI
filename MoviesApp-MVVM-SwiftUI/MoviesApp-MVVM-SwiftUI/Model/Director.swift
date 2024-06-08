//
//  Director.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class Director: Identifiable, Codable {
    var id: String?
    var name: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "yonetmen_id"
        case name = "yonetmen_ad"
    }
    
    init() {
        
    }
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
