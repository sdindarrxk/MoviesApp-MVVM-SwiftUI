//
//  MainViewModelFirebase.swift
//  MoviesApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation
import Firebase

class MainViewModelFirebase: ObservableObject {
    @Published var categories = [Category]()
    
    var ref = Database.database().reference().child("kategoriler")
    
    func loadCategories() {
        ref.observe(.value) { snapshot in
            var list = [Category]()
            
            if let datum = snapshot.value as? [String: AnyObject] {
                for data in datum {
                    if let dict = data.value as? NSDictionary {
                        let id = data.key
                        let name = dict["kategori_ad"] as? String ?? ""
                        
                        let category = Category(id: id, name: name)
                        list.append(category)
                    }
                }
            }
            DispatchQueue.main.async {
                self.categories = list
            }
        }
    }
}
