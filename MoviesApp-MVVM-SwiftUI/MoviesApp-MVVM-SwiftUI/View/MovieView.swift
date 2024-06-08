//
//  MovieView.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import SwiftUI

struct MovieView: View {
    @ObservedObject var viewModel = MovieViewModel()
    
    var category = Category()
    
    var body: some View {
        GeometryReader { geometry in
            let width = (geometry.size.width - 40) / 2
            let columns = [GridItem(.flexible()), GridItem(.flexible())]
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.movies) { movie in
                        NavigationLink(destination: DetailView(movie: movie)) {
                            MovieRow(movie: movie, width: width)
                        }
                    }
                }
            }
            .padding(10)
            .navigationTitle(category.name ?? .init())
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                viewModel.loadMovies(categoryId: category.id ?? .init())
            }
        }
    }
}
