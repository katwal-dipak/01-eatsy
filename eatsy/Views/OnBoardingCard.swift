//
//  OnBoardingCard.swift
//  eatsy
//
//  Created by Deepak Katuwal on 16/05/21.
//

import SwiftUI

struct OnBoardingCard: View {
    var imageName:String
    
    var body: some View {
        ZStack{
            Image(imageName).resizable().scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Button(action: {}) {
                    HStack{
                        Text("Start")
                        Image(systemName: "arrow.right.circle").imageScale(.large)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
                }.accentColor(.white)
                .padding(.bottom, 60)
            }
            
            
        }.ignoresSafeArea()
       
    }
}

struct OnBoardingCard_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingCard(imageName:"onboarding_1")
    }
}
