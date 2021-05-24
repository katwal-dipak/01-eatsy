//
//  Filters.swift
//  eatsy
//
//  Created by Deepak Katuwal on 21/05/21.
//

import SwiftUI

struct Filters: View {
    @State private var isPresented:Bool = false
    @State private var filterType: String = "Dietary"
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                Button(action: {
                    self.isPresented = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
                .background(Color.Custom.Concrete.tint25Percent).cornerRadius(25)
                .foregroundColor(Color.Custom.Black.tint75Percent)
                
                FilterButton(isPresented: $isPresented, filter: $filterType, title: "Dietary")
                FilterButton(isPresented: $isPresented, filter: $filterType,title: "Price Range")
                FilterButton(isPresented: $isPresented, filter: $filterType,title: "Max. Delivery Fee")
                FilterButton(isPresented: $isPresented, filter: $filterType,title: "Sort")
            }
            .fullScreenCover(isPresented: $isPresented){
                FiltersModalView( title: filterType)
            }
            
        }
        .frame(height:50)
    }
}


struct FilterButton: View {
    @Binding var isPresented:Bool
    @Binding var filter:String
    var title: String
    
    var body: some View {
        Button(action: {
            self.isPresented = true
            self.filter = title
        }, label: {
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
