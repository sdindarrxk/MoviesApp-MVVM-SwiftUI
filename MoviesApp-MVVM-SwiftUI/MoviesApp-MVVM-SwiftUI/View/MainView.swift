//
//  ContentView.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = MainViewModelFirebase()
    
    init() {
        viewModel.loadCategories()
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.categories) { category in
                    NavigationLink(destination: MovieView(category: category)) {
                        CategoryRow(category: category)
                    }
                }
            }
            .navigationTitle("Categories")
        }
    }
}
