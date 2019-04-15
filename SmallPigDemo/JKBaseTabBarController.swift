//
//  JKBaseTabBarController.swift
//  SmallPigDemo
//
//  Created by anfa on 2019/3/29.
//  Copyright © 2019 anfa. All rights reserved.
//

import UIKit

class JKBaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {

        if (!JKUserInfoManager.shareInstance.hasLogined()) {
            let loginVC = LoginVC.init(nibName: nil, bundle: nil)
            self.present(loginVC, animated: true) {
                
            }
            
        }
    }
    

}
