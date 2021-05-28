//
//  Search.swift
//  eatsy
//
//  Created by Deepak Katuwal on 17/05/21.
//

import SwiftUI

struct Search: View {
    let categories = [
        Category(id: 0, name: "Coffee", imageURL: ""),
        Category(id: 0, name: "Tibetan", imageURL: ""),
        Category(id: 1, name: "Mexican", imageURL: ""),
        Category(id: 2, name: "Fast Food", imageURL: ""),
        Category(id: 3, name: "Seafood", imageURL: ""),
        Category(id: 4, name: "Juice and Smoothies", imageURL: ""),
        Category(id: 5, name: "Indian", imageURL: ""),
        Category(id: 6, name: "Korean", imageURL: ""),
        Category(id: 7, name: "Middle Eastern", imageURL: ""),
        Category(id: 8, name: "Mediterranean", imageURL: ""),
        Category(id: 9, name: "Italian", imageURL: ""),
        Category(id: 10, name: "Pizza", imageURL: ""),
    ]
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
