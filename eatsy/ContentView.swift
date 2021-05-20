//
//  ContentView.swift
//  eatsy
//
//  Created by Deepak Katuwal on 16/05/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var deviceSettings: DeviceSettings
    
    var body: some View {
        if(deviceSettings.hideOnBoardingScreen){
            CustomTabView()
        }else{
            OnBoarding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DeviceSettings())
    }
}
