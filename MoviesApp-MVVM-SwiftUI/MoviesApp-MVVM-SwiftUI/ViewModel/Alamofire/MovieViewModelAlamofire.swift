//
//  MovieViewModelAlamofire.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation
import Alamofire

class MovieViewModelAlamofire: ObservableObject {
    @Published var movies = [Movie]()
    
    func loadMovies(categoryId: String) {
        guard let url = URL(string: "http://kasimadalan.pe.hu/filmler/filmler_by_kategori_id.php") else { return }
        
        let params = [
            "kategori_id": categoryId
        ]
        
        AF.request(url, method: .post, parameters: params).response { [weak self] response in
            guard let self = self, let data = response.data else { return }
            
            do {
                let response = try JSONDecoder().decode(MovieResponse.self, from: data)
                guard let list = response.list else { return }
                
                DispatchQueue.main.async {
                    self.movies = list
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
