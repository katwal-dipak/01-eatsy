//
//  SubmitButton.swift
//  eatsy
//
//  Created by Deepak Katuwal on 25/05/21.
//

import SwiftUI

struct SubmitButton: View {
    var title:String = "Submit"
    
    var body: some View {
        Text("\(title)")
            .padding()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.Custom.Black.tint75Percent)
            .cornerRadius(5)
    }
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButton().previewLayout(.sizeThatFits)
    }
}
