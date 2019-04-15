//
//  HomeListCell.swift
//  SmallPigDemo
//
//  Created by anfa on 2019/3/29.
//  Copyright © 2019 anfa. All rights reserved.
//

import UIKit

class HomeListCell: UITableViewCell {
    
    @IBOutlet weak var propertyImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ivartarImageView: UIImageView!
    @IBOutlet weak var propertyConceptLabel: UILabel!
    @IBOutlet weak var propertyTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
