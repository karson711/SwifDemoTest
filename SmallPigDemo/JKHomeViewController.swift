//
//  JKHomeViewController.swift
//  SmallPigDemo
//
//  Created by anfa on 2019/3/29.
//  Copyright © 2019 anfa. All rights reserved.
//

import UIKit

class JKHomeViewController: JKBaseViewController ,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "首页"

        self.tableView.register(UINib.init(nibName: "HomeListCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "HomeListCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 282
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
         let cell:GBPropertyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! GBPropertyTableViewCell
         */
 
        let cell:HomeListCell = tableView.dequeueReusableCell(withIdentifier: "HomeListCell") as! HomeListCell
        return cell
    }

}
