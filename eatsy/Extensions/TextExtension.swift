//
//  TextExtension.swift
//  eatsy
//
//  Created by Deepak Katuwal on 27/05/21.
//

import Foundation
import SwiftUI


extension Text {
    
    func H1BoldTextStyle() -> some View {
        self.font(Font.custom("Lato-Bold", size: 16))
            .foregroundColor(Color.Custom.Black.tint75Percent)
    }
    
    
    func H1RegularTextStyle() -> some View {
        self.font(Font.custom("Lato-Regular", size: 16))
            .foregroundColor(Color.Custom.Black.tint75Percent)
    }
    
    
    func H2BoldTextStyle() -> some View {
        self.font(Font.custom("Lato-Bold", size: 14))
            .foregroundColor(Color.Custom.Black.tint50Percent)
    }
    
    
    func H2RegularTextStyle() -> some View {
        self.font(Font.custom("Lato-Bold", size: 14))
            .foregroundColor(Color.Custom.Black.tint50Percent)
    }
}
