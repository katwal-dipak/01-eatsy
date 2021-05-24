//
//  FiltersModalView.swift
//  eatsy
//
//  Created by Deepak Katuwal on 24/05/21.
//

import SwiftUI

struct BackgroundCleanerView: UIViewRepresentable { func makeUIView(context: Context) -> UIView { let view = UIView(); DispatchQueue.main.async { view.superview?.superview?.backgroundColor = .clear }; return view }; func updateUIView(_ uiView: UIView, context: Context) {}
}

struct FiltersModalView: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String = ""
    
    var body: some View {
        VStack{
            Spacer()
                .frame(maxWidth:.infinity)
                .background(Color.black)
                .opacity(0.3)
                .background(BackgroundCleanerView())
            VStack{
                Text(title)
            }
            .frame(maxWidth: .infinity, minHeight: 500)
            .background(Color.white)
        }
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
        .ignoresSafeArea(.all)
        
    }
}

struct FiltersModalView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersModalView()
    }
}
