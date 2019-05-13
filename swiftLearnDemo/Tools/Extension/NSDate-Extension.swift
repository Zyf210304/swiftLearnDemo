//
//  NSDate-Extension.swift
//  swiftLearnDemo
//
//  Created by 张亚飞 on 2019/5/13.
//  Copyright © 2019 张亚飞. All rights reserved.
//

import UIKit

extension NSDate {
    
    func getCurrentTime() -> String {
        
        let nowDate = NSDate()
        
        let interval = nowDate.timeIntervalSince1970
        
        return "\(interval)"
        
    }
}
