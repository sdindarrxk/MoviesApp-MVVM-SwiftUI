//
//  MovieImage.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import SwiftUI

struct MovieImage: View {
    var imageName: String
    
    var body: some View {
        AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/filmler/resimler/\(imageName)")) { image in
            image.resizable().cornerRadius(10)
        } placeholder: {
            ProgressView()
        }
    }
}
