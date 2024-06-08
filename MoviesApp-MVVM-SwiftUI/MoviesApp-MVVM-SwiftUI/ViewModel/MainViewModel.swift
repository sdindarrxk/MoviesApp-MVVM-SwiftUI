//
//  MainViewModel.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation

class MainViewModel: ObservableObject {
    @Published var categories = [Category]()
    
    func loadCategories() {
        var list = [Category]()
        
        let k1 = Category(id: "1", name: "Action")
        let k2 = Category(id: "2", name: "Drama")
        let k3 = Category(id: "3", name: "Science Fiction")
        list.append(k1)
        list.append(k2)
        list.append(k3)
        
        categories = list
    }
}
