//
//  MainViewModelURLSession.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class MainViewModelURLSession: ObservableObject {
    @Published var categories = [Category]()
    
    func loadCategories() {
        guard let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_kategoriler.php") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            
            do {
                let response = try JSONDecoder().decode(CategoryResponse.self, from: data)
                guard let list = response.list else { return }
                
                DispatchQueue.main.async {
                    self.categories = list
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
