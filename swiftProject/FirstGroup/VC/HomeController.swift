//
//  HomeController.swift
//  swiftProject
//
//  Created by 玉岳鹏 on 2018/10/10.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class HomeController: BaseController , UITableViewDelegate, UITableViewDataSource {
    
    
    
    let tableView:UITableView = UITableView.init(frame: CGRect.init(x: 0, y: 64, width: YYScreenWidth, height: YYScreenHeigth - 64 - 49), style: UITableView.Style.plain)
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.blue
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "UITableViewCellID")
        self.view.addSubview(self.tableView)
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCellID")!
        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell;
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
