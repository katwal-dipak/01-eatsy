//
//  Home.swift
//  eatsy
//
//  Created by Deepak Katuwal on 17/05/21.
//

import SwiftUI

struct Home: View {

    var body: some View {
        NavigationView{
            VStack{
                Filters().padding(.horizontal, 10)
                Divider()
                ImageCarsouel()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
