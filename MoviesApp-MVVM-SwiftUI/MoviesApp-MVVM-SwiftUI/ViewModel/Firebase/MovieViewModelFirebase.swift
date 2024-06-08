//
//  MovieViewModelFirebase.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation
import Firebase

class MovieViewModelFirebase: ObservableObject {
    @Published var movies = [MovieFirebase]()
    
    var ref = Database.database().reference().child("filmler")
    
    func loadMovies(categoryName: String) {
        let query = ref.queryOrdered(byChild: "kategori_ad").queryEqual(toValue: categoryName)
        
        query.observe(.value) { snapshot,_  in
            var list = [MovieFirebase]()
            
            if let datum = snapshot.value as? [String: AnyObject] {
                for data in datum {
                    if let dict = data.value as? NSDictionary {
                        let id = data.key
                        let name = dict["film_ad"] as? String ?? ""
                        let year = dict["film_yil"] as? Int ?? 0
                        let image = dict["film_resim"] as? String ?? ""
                        let categoryName = dict["kategori_ad"] as? String ?? ""
                        let directorName = dict["yonetmen_ad"] as? String ?? ""
                        
                        let movie = MovieFirebase(id: id, name: name, year: year, image: image, categoryName: categoryName, directorName: directorName)
                        list.append(movie)
                    }
                }
            }
            DispatchQueue.main.async {
                self.movies = list
            }
        }
    }
}
