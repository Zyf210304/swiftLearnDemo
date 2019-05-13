//
//  BaseGameModel.swift
//  swiftLearnDemo
//
//  Created by 张亚飞 on 2019/5/13.
//  Copyright © 2019 张亚飞. All rights reserved.
//

import UIKit

class BaseGameModel: NSObject {

    @objc var tag_name : String = ""
    
    @objc var tag_icon : String = ""
    
    override init() {
        
    }
    
    init(dict:[String : Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}
