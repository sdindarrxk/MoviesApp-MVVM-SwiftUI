//
//  DetailView.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import SwiftUI

struct DetailView: View {
    var movie = Movie()
    
    var body: some View {
        VStack(spacing: 30) {
            Image(movie.image ?? .init())
            
            Text(movie.director?.name ?? .init())
                .font(.system(size: 25))
            
            Text(String(movie.year ?? .init()))
                .font(.system(size: 35))
                .foregroundColor(.green)
            
            Button("Add To Cart") {
                print("Detail View: \(movie.name) added to cart.")
            }
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(.indigo)
            .cornerRadius(10)
        }
        .navigationTitle(movie.name ?? .init())
        .navigationBarTitleDisplayMode(.inline)
    }
}
