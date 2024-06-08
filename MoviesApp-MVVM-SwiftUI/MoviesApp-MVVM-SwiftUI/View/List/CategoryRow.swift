//
//  CategoryRow.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import SwiftUI

struct CategoryRow: View {
    var category = Category()
    
    var body: some View {
        Text(category.name ?? .init())
            .foregroundStyle(.secondary)
            .font(.title3)
    }
}
