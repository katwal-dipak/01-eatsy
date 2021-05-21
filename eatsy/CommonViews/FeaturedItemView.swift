//
//  FeaturedItemView.swift
//  eatsy
//
//  Created by Deepak Katuwal on 21/05/21.
//

import SwiftUI
import URLImage

 var imageURL = URL(string: "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80")!

struct FeaturedItemView: View {
    
    var body: some View {
        URLImage(imageURL) {
            // This view is displayed before download starts
           Image("placeholder").resizable()
            .aspectRatio(contentMode: .fit)
        } inProgress: { progress in
            // Display progress
            Image("placeholder").resizable()
                .aspectRatio(contentMode: .fit).cornerRadius(5)
        } failure: { error, retry in
            // Display error and retry button
            VStack {
                Text(error.localizedDescription)
                Button("Retry", action: retry)
            }
        } content: { image in
            // Downloaded image
            image
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
               
        }
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView().previewLayout(.sizeThatFits)
    }
}
