//
//  netWorkTools.swift
//  swiftLearnDemo
//
//  Created by 张亚飞 on 2019/5/13.
//  Copyright © 2019 张亚飞. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType {
    case get
    case post
}

class netWorkTools {
    
    class func requestData(type: MethodType, URLString: String, parameters: [String : Any]? = nil, finishCallback: @escaping (_ result: AnyObject) -> ()) {
        
        //1. 获取类型
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        
        //2. 发送请求
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            
            //3. 获取数据
            guard let result = response.result.value else {
                print(response.result.error as Any)
                return
            }
            
            //4. 将结果返回
            finishCallback(result as AnyObject)
        }
        
    }
}


