//
//  CustomTabView.swift
//  eatsy
//
//  Created by Deepak Katuwal on 18/05/21.
//

import SwiftUI

let tabs = ["house", "magnifyingglass", "cart",  "gearshape"]


struct CustomTabView: View {
    @State private var selectedTab: String = "house"
    @State var xAxis: CGFloat = 0
    @Namespace  var animation
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            TabView(selection: $selectedTab){
                Home().tag("house")
                Search().tag("magnifyingglass")
                Orders().tag("filemenu.and.selection")
                Settings().tag("gearshape")
            }
            
            HStack(){
                ForEach(tabs, id:\.self){ image in
                    GeometryReader { reader in
                        Button(action: {
                            withAnimation(.spring()){
                                self.selectedTab = image
                                xAxis = reader.frame(in: .global).minX
                            }
                        }, label: {
                            Image(systemName: image)
                                .resizable()
                                // .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.white)
                                .padding(selectedTab == image ? 15 : 0)
                                .background(Color.black.opacity(selectedTab == image ?1 : 0).clipShape(Circle()))
                                .matchedGeometryEffect(id: image, in: animation)
                                .offset(x: selectedTab == image ? (reader.frame(in: .global).minX - reader.frame(in: .global).midX) : 0 , y: selectedTab == image ? -50 : 0)
                            
                        }).onAppear(){
                            if image == tabs.first {
                                xAxis = reader.frame(in: .global).minX
                            }
                        }
                        
                    }  .frame(width: 25, height: 25)
                    
                    if(image != tabs.last){
                        Spacer()
                    }
                    
                }
            }
            .padding(.horizontal, 30)
            .padding(.vertical)
            .background(Color.Custom.Black.tint75Percent.clipShape(CustomShape(xAxis: xAxis)).cornerRadius(12))
            .padding(.horizontal)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
        }
        .ignoresSafeArea()
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

struct CustomShape: Shape {
    var xAxis: CGFloat
    
    var animatableData: CGFloat {
       get {
        return xAxis
       }
       
        set {
            xAxis = newValue
        }
    }
    
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            
            path.move(to: CGPoint(x:0, y:0))
            path.addLine(to: CGPoint(x: rect.width, y: 0) )
            path.addLine(to: CGPoint(x: rect.width, y: rect.height) )
            path.addLine(to: CGPoint(x: 0, y: rect.height) )
            
            let center = xAxis
            
            path.move(to: CGPoint(x: center - 50, y:0))
            
            let to1 = CGPoint(x: center, y: 35)
            let control1 = CGPoint(x: center - 25, y: 0)
            let control2 = CGPoint(x: center - 25, y: 35)
            
            
            let to2 = CGPoint(x: center +  50, y: 0)
            let control3 = CGPoint(x: center + 25, y: 35)
            let control4 = CGPoint(x: center + 25, y: 0)
            
            
            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
        }
    }
}
