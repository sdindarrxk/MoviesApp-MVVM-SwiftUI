//
//  MovieRow.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import SwiftUI

struct MovieRow: View {
    var movie = MovieFirebase()
    var width = 0.0
    
    var body: some View {
        VStack(spacing: 25) {
            MovieImage(imageName: movie.image ?? .init())
                .frame(width: width)
            
            Text(movie.name ?? .init())
                .foregroundColor(.gray)
            
            Text("Add To Cart")
                .padding(5)
                .foregroundColor(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom, 5)
                .onTapGesture {
                    print("\(movie.name ?? .init()) added to cart.")
                }
        }
        .background(Rectangle().fill(.white).shadow(radius: 3))
    }
}
