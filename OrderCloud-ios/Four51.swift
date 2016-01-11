//
//  uicolor-extension.swift
//  OrderCloud-ios
//
//  Created by Ben Le Cam on 1/6/16.
//  Copyright © 2016 Ben Le Cam. All rights reserved.
//

import Foundation

extension UIColor {
    public convenience init?(hexString: String) {
        let r, g, b, a: CGFloat
        
        if hexString.hasPrefix("#") {
            let start = hexString.startIndex.advancedBy(1)
            let hexColor = hexString.substringFromIndex(start)
            
            if hexColor.characters.count == 8 {
                let scanner = NSScanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexLongLong(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        
        return nil
    }
}

struct Four51 {
    struct Colors {
        static var navy = UIColor(hexString:"#003843")
        static let orange = UIColor(red:1, green:0.373, blue:0.196,alpha:1) /*#ff5f32*/
        static var blue = UIColor(hexString:"#008fdc")
        static var teal = UIColor(hexString:"#43beca")
        static var yellow = UIColor(hexString:"#fbd764")
        static var gray = UIColor(hexString:"#a2a2a2")
    }
}