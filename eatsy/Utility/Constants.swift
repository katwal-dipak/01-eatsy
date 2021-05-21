//
//  Constants.swift
//  eatsy
//
//  Created by Deepak Katuwal on 21/05/21.
//

import Foundation


struct Constants {
    
    struct Colors {
        
        struct Theme {
            static let PrimaryColor = "#407BFF"
            static let SecondaryColor = "#3AA76D"
        }
        
        struct Black {
            static let core = "#000000"
            static let tint75Percent = "#141414"
            static let tint50Percent = "#404040"
            static let tint25Percent = "#808080"
        }
        
        struct White {
            static let core = "#FFFFFF"
            static let tint75Percent = "#F7F5F3"
            static let tint50Percent = "#F7F7F7"
        }
        
        struct Concrete {
            static let core = "#B1B2B4"
            static let tint75Percent = "#C5C5C7"
            static let tint50Percent = "#D8D9D9"
            static let tint25Percent = "#EBECEC"
        }
        
        struct Views {
            static let Tabview = Black.tint75Percent
            static let Button = Theme.PrimaryColor
            static let Border = Black.tint75Percent
            
        }
    }
    
}
