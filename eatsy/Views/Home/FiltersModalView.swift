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
        VStack(){
            Spacer()
                .frame(maxWidth:.infinity)
                .background(Color.black)
                .opacity(0.3)
                .background(BackgroundCleanerView())
            VStack(){
                ScrollView(showsIndicators: false){
                    DietaryFilter()
                    PriceFilter()
                    DeliveryFeeFilter()
                    SortFilter()
                }
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

struct DietaryFilter: View {
    @EnvironmentObject private var listingFilters: ListingFilters
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Dietary")
                .textStyle(H1BoldStyle())
                .padding(.bottom, 10)
            
            if(listingFilters.veg){
                HStack{
                    Image(systemName: "leaf.fill").foregroundColor(Color.green)
                    Text("Pure Veg").foregroundColor(Color.green)
                }.onTapGesture {
                    listingFilters.veg = false
                }
            }else{
                HStack{
                    Image(systemName: "leaf")
                    Text("Pure Veg")
                        .textStyle(H1RegularStyle())
                }.onTapGesture {
                    listingFilters.veg = true
                }
            }
        }
        .frame( maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom, 20)
    }
}

struct PriceFilter: View {
    @EnvironmentObject private var listingFilters: ListingFilters
    
    func isSelected(price: String) -> Bool {
        if(listingFilters.priceRange.contains("\(price)")){
            return true
        }
        
        return false
    }
    
    func onPress(price: String) -> Void {
        if(isSelected(price: price)){
            listingFilters.priceRange.removeAll { value in
                return value == price
            }
        }else{
            listingFilters.priceRange.append(price)
        }
    }
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Price Range")
                .textStyle(H1BoldStyle())
                .padding(.bottom, 10)
            
            HStack{
                Button(action: {
                    onPress(price: "$")
                    
                }, label: {
                    PriceRangeButton(isSelected: isSelected(price: "$"), price: "$")
                })
                
                Button(action: {
                    onPress(price: "$$")
                }, label: {
                    PriceRangeButton(isSelected: isSelected(price: "$$"), price: "$$")
                })
                
                
                Button(action: {
                    onPress(price: "$$$")
                }, label: {
                    PriceRangeButton(isSelected: isSelected(price: "$$$"), price: "$$$$")
                })
                
                
                Button(action: {
                    onPress(price: "$$$$")
                }, label: {
                    PriceRangeButton(isSelected: isSelected(price: "$$$$"), price: "$$$$")
                })
                
            }
        }
        .frame( maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom, 20)
        
    }
}


struct DeliveryFeeFilter: View {
    @EnvironmentObject private var listingFilters: ListingFilters
    
    private var deliveryFee: Double {
        return listingFilters.deliveryFee
    }
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Max. Delivery Fee")
                .textStyle(H1BoldStyle())
                .padding(.bottom, 10)
            Text("$\(deliveryFee, specifier: "%.0f")").padding(.bottom, 10)
            HStack{
                Slider(value: $listingFilters.deliveryFee, in: 20...100,  step: 1)
            }
        }
        .frame( maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom, 20)
    }
}

struct SortFilter: View {
    @EnvironmentObject private var listingFilters: ListingFilters
    
    private var deliveryFee: Double {
        return listingFilters.deliveryFee
    }
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Sort")
                .textStyle(H1BoldStyle())
                .padding(.bottom, 10)
            
            HStack(alignment: .center){
                Image(systemName: "flame").resizable().frame(width: 20, height: 25)
                Text("Picked for you (default)")
            }.padding(.bottom, 10)
            
            HStack(alignment: .center){
                Image(systemName: "flame").resizable().frame(width: 20, height: 25)
                Text("Most Popular")
            }.padding(.bottom, 10)
            
            HStack(alignment: .center){
                Image(systemName: "star").resizable().frame(width: 25, height: 25)
                Text("Rating")
            }
            .padding(.bottom, 10)
            
            HStack(alignment: .center){
                Image(systemName: "clock").resizable().frame(width: 25, height: 25)
                Text("Delivery Time")
            }.padding(.bottom, 10)
        }
        .frame( maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom, 20)
    }
}

struct FiltersModalView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersModalView().environmentObject(ListingFilters())
    }
}
