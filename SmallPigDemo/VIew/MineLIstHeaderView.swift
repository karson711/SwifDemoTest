//
//  MineLIstHeaderView.swift
//  SmallPigDemo
//
//  Created by anfa on 2019/3/29.
//  Copyright © 2019 anfa. All rights reserved.
//

import UIKit

class MineLIstHeaderView: UIView {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatorImaeView: UIImageView!
    
    override func awakeFromNib() {

        self.avatorImaeView.layer.cornerRadius = 42.5
        self.avatorImaeView.layer.masksToBounds = true
    }

    class func loadFromXib() -> MineLIstHeaderView {
        return Bundle.main.loadNibNamed("MineLIstHeaderView", owner: nil, options: nil)?.first as! MineLIstHeaderView
    }
    
}
