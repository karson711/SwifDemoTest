//
//  MineViewController.swift
//  SmallPigDemo
//
//  Created by anfa on 2019/3/29.
//  Copyright © 2019 anfa. All rights reserved.
//

import UIKit

class MineViewController: JKBaseViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var headerView:MineLIstHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headerView = MineLIstHeaderView.loadFromXib()
        tableView.tableHeaderView = headerView
        
    }



}
