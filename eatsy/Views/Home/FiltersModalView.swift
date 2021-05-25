//
//  FiltersModalView.swift
//  eatsy
//
//  Created by Deepak Katuwal on 24/05/21.
//

import SwiftUI

struct BackgroundCleanerView: UIViewRepresentable { func makeUIView(context: Context) -> UIView { let view = UIView(); DispatchQueue.main.async { view.superview?.superview?.backgroundColor = .clear }; return view }; func updateUIView(_ uiView: UIView, context: Context) {}
}


struct DietaryFilter: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Dietary").padding(.bottom, 10)
            HStack{
                Image(systemName: "leaf")
                Text("Pure Veg")
            }
        }
        .frame( maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom, 20)
    }
}

struct PriceFilter: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Price Range").padding(.bottom, 10)
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("$")
                })
                .frame(width: 50, height: 50, alignment: .center)
                .background(Color.Custom.Black.tint75Percent)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity)
                
                Button(action: {}, label: {
                    Text("$$")
                })
                .frame(width: 50, height: 50, alignment: .center)
                .background(Color.Custom.Black.tint75Percent)
                .foregroundColor(.white)
                .clipShape(Circle())
                .frame(maxWidth: .infinity)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("$$$")
                })
                .frame(width: 50, height: 50, alignment: .center)
                .background(Color.Custom.Black.tint75Percent)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("$$$$")
                }).frame(width: 50, height: 50, alignment: .center)
                .background(Color.Custom.White.tint75Percent)
                .foregroundColor(.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity)
                
            }
        }
        .frame( maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom, 20)
        
    }
}


struct DeliveryFeeFilter: View {
    @State private var price: Double = 0
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Max. Delivery Fee").padding(.bottom, 10)
            
            Text("$\(price, specifier: "%.0f")").padding(.bottom, 10)
            
            HStack{
                Slider(value: $price, in: 20...100,  step: 1)
            }
        }
        .frame( maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom, 20)
    }
}


struct FiltersModalView: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String = ""
    
    var body: some View {
        VStack(){
            Spacer()
                .frame(maxWidth:.infinity)
                .background(Color.black)
                .opacity(0.3)
                .background(BackgroundCleanerView())
            VStack(){
                DietaryFilter()
                PriceFilter()
                DeliveryFeeFilter()
                Spacer()
                Button(action: {
                    
                }, label: {
                    SubmitButton(title: "SUBMIT")
                }).padding(.bottom,30)
            }
            .padding(15)
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
