//
//  Filters.swift
//  eatsy
//
//  Created by Deepak Katuwal on 21/05/21.
//

import SwiftUI

struct Filters: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
                .background(Color.Custom.Concrete.tint25Percent).cornerRadius(25)
                .foregroundColor(Color.Custom.Black.tint75Percent)
                
               FilterButton(title: "Dietary")
               FilterButton(title: "Price Range")
               FilterButton(title: "Max. Delivery Fee")
               FilterButton(title: "Sort")
            }
            
        }
        .frame(height:50)
    }
}


struct FilterButton: View {
     var title: String
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center) {
                Text(("\(title)"))
                Image(systemName: "chevron.down")
            }
        })
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(Color.Custom.Concrete.tint25Percent).cornerRadius(25)
        .foregroundColor(Color.Custom.Black.tint75Percent)
    }
}



struct Filters_Previews: PreviewProvider {
    static var previews: some View {
        Filters().previewLayout(.sizeThatFits)
    }
}
