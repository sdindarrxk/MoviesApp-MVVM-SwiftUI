//
//  MovieViewModelURLSession.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class MovieViewModelURLSession: ObservableObject {
    @Published var movies = [Movie]()
    
    func loadMovies(categoryId: String) {
        let urlString = "http://kasimadalan.pe.hu/filmler/filmler_by_kategori_id.php"
        guard let url = URL(string: urlString) else { return }
        let postString = "kategori_id=\(categoryId)"
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            guard let self = self, let data = data else { return }
            
            do {
                let response = try JSONDecoder().decode(MovieResponse.self, from: data)
                guard let list = response.list else { return }
                
                DispatchQueue.main.async {
                    self.movies = list
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
