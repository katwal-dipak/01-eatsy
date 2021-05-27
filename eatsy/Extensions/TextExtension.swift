//
//  TextExtension.swift
//  eatsy
//
//  Created by Deepak Katuwal on 27/05/21.
//

import Foundation
import SwiftUI

struct H1BoldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Lato-Bold", size: 16))
            .foregroundColor(Color.Custom.Black.tint75Percent)
    }
}

struct H1RegularStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Lato-Regular", size: 16))
            .foregroundColor(Color.Custom.Black.tint75Percent)
    }
}

struct H2BoldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Lato-Bold", size: 14))
            .foregroundColor(Color.Custom.Black.tint50Percent)
    }
}

struct H2RegularStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Lato-Regular", size: 14))
            .foregroundColor(Color.Custom.Black.tint50Percent)
    }
}


extension Text {
    func textStyle<Style: ViewModifier>(_ style: Style) -> some View {
        ModifiedContent(content: self, modifier: style)
    }
}
