//
//  UIColor-Extension.swift
//  swiftLearnDemo
//
//  Created by 张亚飞 on 2019/5/13.
//  Copyright © 2019 张亚飞. All rights reserved.
//

import UIKit

extension UIColor {

    convenience init(r:CGFloat, g:CGFloat, b:CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
    
    static func colorWihtHexString (hex:String) ->(UIColor) {
        
        var cString:String = hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        
        if cString.count == 0 {
            return UIColor.clear
        }
        
        if cString.hasPrefix("#") {
            cString = (cString as NSString).substring(from: 1)
        }
        
        if cString.count != 6  {
            return UIColor.gray
        }
        
        let rString = (cString as NSString).substring(to: 2)
        let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
    
    
    static func UIColorFromRGB(colorValue:UInt64, alpha:CGFloat = 1) -> UIColor {
        let redValue = CGFloat((colorValue & 0xFF0000) >> 16)/255.0
        let greenValue = CGFloat((colorValue & 0xFF00) >> 8)/255.0
        let blueValue = CGFloat(colorValue & 0xFF)/255.0
        return UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: alpha)
    }
    
}
