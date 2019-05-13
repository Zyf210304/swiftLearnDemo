//
//  NSString-Extension.swift
//  swiftLearnDemo
//
//  Created by 张亚飞 on 2019/5/13.
//  Copyright © 2019 张亚飞. All rights reserved.
//

import UIKit

extension NSString {
    
    class func getLabHeigh(lblStr:String, font:UIFont, width:CGFloat) -> CGFloat {
        
        let statusLabelText :NSString = lblStr as NSString
        
        let size = CGSize(width: width, height: 1000);
        let dic = NSDictionary(object: font, forKey: NSAttributedString.Key.font as NSCopying)
        
        let strSize = statusLabelText.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: dic as? [NSAttributedString.Key : Any], context:nil).size
        
        return strSize.height
        
    }
    
    func getLabWidth(labelStr:String,font:UIFont,height:CGFloat) -> CGFloat {
        
        let statusLabelText: NSString = labelStr as NSString
        
        let size = CGSize(width: 900, height: height)
        
        let dic = NSDictionary(object: font, forKey: NSAttributedString.Key.font as NSCopying)
        
        let strSize = statusLabelText.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: dic as? [NSAttributedString.Key : Any], context:nil).size
        
        return strSize.width
        
    }
    
}
