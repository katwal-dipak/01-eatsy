//
//  Home.swift
//  eatsy
//
//  Created by Deepak Katuwal on 17/05/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        GeometryReader { geometry in
                VStack{
                    ImageCarsouel()
                      .frame(width: geometry.size.width, height: geometry.size.width * 0.7)
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
