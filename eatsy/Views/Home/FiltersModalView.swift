//
//  FiltersModalView.swift
//  eatsy
//
//  Created by Deepak Katuwal on 24/05/21.
//

import SwiftUI

struct FiltersModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            Text("This is a modal view")
        }
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }

    }
}

struct FiltersModalView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersModalView()
    }
}
