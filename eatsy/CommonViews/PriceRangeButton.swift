//
//  PriceRangeButton.swift
//  eatsy
//
//  Created by Deepak Katuwal on 27/05/21.
//

import SwiftUI

struct PriceRangeButton: View {
    var isSelected: Bool = false
    var price: String  = "$"
    
    
    var body: some View {
        Text("\(price)")
            .frame(width: 50, height: 50, alignment: .center)
            .background(isSelected ?  Color.Custom.Black.tint75Percent : Color.Custom.Concrete.tint25Percent)
            .foregroundColor(isSelected ?  .white : Color.Custom.Black.tint75Percent)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity)
    }
}

struct PriceRangeButton_Previews: PreviewProvider {
    static var previews: some View {
        PriceRangeButton().previewLayout(.sizeThatFits)
    }
}
