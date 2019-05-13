//
//  BaseViewModel.swift
//  swiftLearnDemo
//
//  Created by 张亚飞 on 2019/5/13.
//  Copyright © 2019 张亚飞. All rights reserved.
//

import UIKit

class BaseViewModel {
    
    lazy var anchorGroups : [AnchorGroupModel] = [AnchorGroupModel]()
    
}



extension BaseViewModel {
    
    func loadAnchorData(isGroupData: Bool ,URLString: String, parameters: [String : Any]? = nil, finishCallback: @escaping () -> ()) {
        
        netWorkTools.requestData(type: .get, URLString: URLString, parameters: parameters) { (resust) in
            
            guard let resultDict = resust as? [String : Any] else { return }
            guard let dataArray = resultDict["data"] as? [[String : Any]] else { return }
            
            //2. 判断是否分组数据
            if isGroupData {
                
                //2.1 字典转模型对象
                for dict in dataArray {
                    self.anchorGroups.append(AnchorGroupModel(dict: dict))
                }
                
            } else {
                //2.1 创建组
                let group = AnchorGroupModel()
                
                //2.2 遍历 dataArray 所有的字典
                for dict in dataArray {
                    group.anchors.append(AnchorModel(dict: dict))
                }
                
                //2.3 将 group 添加到 anchorGroups 里面
                self.anchorGroups.append(group)
                
            }

            finishCallback()
            
        }
        
        
        
        
    }
}

