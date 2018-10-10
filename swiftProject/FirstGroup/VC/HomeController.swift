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
        self.tableView.register(HomeOneCell.classForCoder(), forCellReuseIdentifier: "HomeOneCellID")
        self.tableView.register(HomeTwoCell.classForCoder(), forCellReuseIdentifier: "HomeTwoCellID")
        self.tableView.register(HomeThreeCell.classForCoder(), forCellReuseIdentifier: "HomeThreeCellID")
        self.tableView.register(HomeFourthCell.classForCoder(), forCellReuseIdentifier: "HomeFourthCellID")

        self.view.addSubview(self.tableView)
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell:HomeOneCell = tableView.dequeueReusableCell(withIdentifier: "HomeOneCellID") as! HomeOneCell
            
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        } else if indexPath.section == 1 {
            let cell:HomeTwoCell = tableView.dequeueReusableCell(withIdentifier: "HomeTwoCellID") as! HomeTwoCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }else if indexPath.section == 2 {
            let cell:HomeThreeCell = tableView.dequeueReusableCell(withIdentifier: "HomeThreeCellID") as! HomeThreeCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }else {
            let cell:HomeFourthCell = tableView.dequeueReusableCell(withIdentifier: "HomeFourthCellID") as! HomeFourthCell
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        } else if indexPath.section == 1 {
            return 350
        } else if indexPath.section == 2 {
            return 300
        } else {
            return 1000
        }
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
