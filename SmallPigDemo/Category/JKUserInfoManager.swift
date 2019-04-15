//
//  JKUserInfoManager.swift
//  SmallPigDemo
//
//  Created by anfa on 2019/3/29.
//  Copyright © 2019 anfa. All rights reserved.
//

import UIKit

class JKUserInfoManager: NSObject {

    var logined : Bool!
    
    static var shareInstance : JKUserInfoManager{
        struct UserInfoModel {
            static var instance : JKUserInfoManager = JKUserInfoManager()
        }
        return UserInfoModel.instance
    }
    
    func setLogined(logined:Bool) {
        self.logined = logined
    }
    
    func hasLogined() -> Bool{
        return self.logined == nil ? false : self.logined
    }
    
}
