//
//  AnchorGroupModel.swift
//  swiftLearnDemo
//
//  Created by 张亚飞 on 2019/5/13.
//  Copyright © 2019 张亚飞. All rights reserved.
//

import UIKit

class AnchorGroupModel: BaseGameModel {


    
    @objc var room_list : [[String : NSObject]]? {
        didSet {
            guard let room_list = room_list else  { return }
            for dict in room_list {
                anchors.append(AnchorModel.init(dict:dict))
            }
        }
    }
    
    /// 组显示的图标
    @objc var icon_name : String = "home_header_normal"
    /// 定义主播的模型对象数组
    @objc lazy var anchors : [AnchorModel] = [AnchorModel]()
    
    
}
