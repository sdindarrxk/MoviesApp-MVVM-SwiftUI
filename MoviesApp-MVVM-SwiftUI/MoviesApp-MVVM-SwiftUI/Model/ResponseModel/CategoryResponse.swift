//
//  CategoryResponse.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class CategoryResponse: Codable {
    var list: [Category]?
    var success: Int?
    
    enum CodingKeys: String, CodingKey {
        case list = "kategoriler"
        case success
    }
}
