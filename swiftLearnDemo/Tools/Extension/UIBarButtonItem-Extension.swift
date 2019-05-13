//
//  UIBarButtonItem-Extension.swift
//  swiftLearnDemo
//
//  Created by 张亚飞 on 2019/5/13.
//  Copyright © 2019 张亚飞. All rights reserved.
//

import UIKit

extension UIBarButtonItem {

    convenience  init(imageName:String, highImageName:String = "", size :CGSize = CGSize.zero, viewController:UIViewController, selector:Selector) {

        print(size)
    
        let btn = UIButton()
        btn.addTarget(viewController, action: selector, for: .touchUpInside)
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        
        if size == CGSize.zero {
            btn.frame = CGRect(origin: CGPoint.zero, size: CGSize.zero)
        }
        
        self.init(customView:btn)
    }

    
}
