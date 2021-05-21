//
//  ImageCarsouel.swift
//  eatsy
//
//  Created by Deepak Katuwal on 21/05/21.
//

import SwiftUI

struct ImageCarsouel: View {
    var body: some View {
        TabView {
            ForEach(1..<4, id: \.self ){ item in
                FeaturedItemView().padding(.horizontal,5)
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct ImageCarsouel_Previews: PreviewProvider {
    static var previews: some View {
        ImageCarsouel().previewLayout(.sizeThatFits).background(Color.black)
    }
}
