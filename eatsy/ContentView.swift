//
//  ContentView.swift
//  eatsy
//
//  Created by Deepak Katuwal on 16/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         CustomTabView()
       /* TabView {
            Home()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            Search()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            
            Cart()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            
            Orders()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            
            Settings()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
