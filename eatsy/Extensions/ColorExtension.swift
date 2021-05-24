//
//  ColorExtension.swift
//  eatsy
//
//  Created by Deepak Katuwal on 21/05/21.
//

import Foundation
import SwiftUI

extension Color {
    
    struct Custom{
        struct Black {
            static let core = Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255)
            static let tint75Percent =  Color(red: 20 / 255, green: 20 / 255, blue: 20 / 255)
            static let tint50Percent =  Color(red: 64 / 255, green: 64 / 255, blue: 64 / 255)
            static let tint25Percent =  Color(red: 128 / 255, green: 128 / 255, blue: 128 / 255)
        }
        
        struct White {
            static let core = Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
            static let tint75Percent =  Color(red: 247 / 255, green: 245 / 255, blue: 243 / 255)
            static let tint50Percent =  Color(red: 247 / 255, green: 247 / 255, blue: 247 / 255)
        }
        
        struct Concrete {
            static let core = Color(red: 177 / 255, green: 178 / 255, blue: 180 / 255)
            static let tint75Percent =  Color(red: 197 / 255, green: 197 / 255, blue: 199 / 255)
            static let tint50Percent =  Color(red: 216 / 255, green: 217 / 255, blue: 217 / 255)
            static let tint25Percent =  Color(red: 235 / 255, green: 236 / 255, blue: 236 / 255)
        }
        
    }
}
