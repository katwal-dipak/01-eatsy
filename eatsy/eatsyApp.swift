//
//  eatsyApp.swift
//  eatsy
//
//  Created by Deepak Katuwal on 16/05/21.
//

import SwiftUI

@main
struct eatsyApp: App {
    @StateObject private var deviceSettings = DeviceSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(deviceSettings)
        }
    }
}
