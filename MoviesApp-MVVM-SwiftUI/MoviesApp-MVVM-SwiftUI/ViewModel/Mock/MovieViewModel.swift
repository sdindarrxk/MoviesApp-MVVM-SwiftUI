//
//  MovieViewModel.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class MovieViewModel: ObservableObject {
    @Published var movies = [Movie]()
    
    func loadMovies(categoryId: String) {
        var list = [Movie]()
        
        let c1 = Category(id: "1", name: "Action")
        let c2 = Category(id: "2", name: "Drama")
        let c3 = Category(id: "3", name: "Science Fiction")
        let d1 = Director(id: "1", name: "Quentin Tarantino")
        let d2 = Director(id: "2", name: "Christopher Nolan")
        let d3 = Director(id: "3", name: "Nuri Bilge Ceylan")
        let d4 = Director(id: "4", name: "Roman Polanski")
        let m1 = Movie(id: "1", name: "Django", year: "2014", image: "django", category: c1, director: d1)
        let m2 = Movie(id: "2", name: "Interstellar", year: "2015", image: "interstellar", category: c3, director: d2)
        let m3 = Movie(id: "3", name: "Inception", year: "2010", image: "inception", category: c3, director: d2)
        let m4 = Movie(id: "4", name: "Bir Zamanlar Anadoluda", year: "2011", image: "birzamanlaranadoluda", category: c2, director: d3)
        let m5 = Movie(id: "5", name: "The Pianist", year: "2008", image: "thepianist", category: c2, director: d4)
        let m6 = Movie(id: "6", name: "The Hateful Eight", year: "2017", image: "thehatefuleight", category: c1, director: d1)
        list.append(m1)
        list.append(m2)
        list.append(m3)
        list.append(m4)
        list.append(m5)
        list.append(m6)
        
        list = list.filter { $0.category?.id == categoryId }
        
        movies = list
    }
}
