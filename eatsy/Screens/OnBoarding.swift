//
//  OnBoarding.swift
//  eatsy
//
//  Created by Deepak Katuwal on 16/05/21.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        ScrollView {
            TabView {
                OnBoardingCard(imageName: "onboarding_1")
                OnBoardingCard(imageName: "onboarding_2")
            }
            .frame(
                width: UIScreen.main.bounds.width ,
                height: UIScreen.main.bounds.height
            )
            .tabViewStyle(PageTabViewStyle())
        }
        .ignoresSafeArea()
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
