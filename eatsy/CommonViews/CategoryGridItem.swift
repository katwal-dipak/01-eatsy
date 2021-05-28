//
//  CategoryGridItem.swift
//  eatsy
//
//  Created by Deepak Katuwal on 27/05/21.
//

import SwiftUI

struct CategoryGridItem: View {
    var body: some View {
        Image(systemName: "bell")
            .resizable()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CategoryGridItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridItem().previewLayout(.sizeThatFits)
    }
}
