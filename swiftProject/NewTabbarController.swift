//
//  NewTabbarController.swift
//  swiftProject
//
//  Created by 玉岳鹏 on 2018/10/10.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class NewTabbarController: UITabBarController,UITabBarControllerDelegate {
    let singleLength:CGFloat = YYScreenWidth/750.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpViewControllers()
        // Do any additional setup after loading the view.
    }
    
    func setUpViewControllers() -> Void {
        let homeVC:HomeController = HomeController()
        let selectVC:SelectController = SelectController()
        let publishVC:PublishController = PublishController()
        let collectionVC:CollectionController = CollectionController()
        let mineVC:MineController = MineController()
        self.addChildVC(vc: homeVC, title: "首页", image: "tabbar1", selectedImage: "tabbar1")
        self.addChildVC(vc: selectVC, title: "甄选", image: "tabbar1", selectedImage: "tabbar1")
        self.addChildVC(vc: publishVC, title: "发布", image: "tabbar1", selectedImage: "tabbar1")
        self.addChildVC(vc: collectionVC, title: "收藏", image: "tabbar1", selectedImage: "tabbar1")
        self.addChildVC(vc: mineVC, title: "我的", image: "tabbar1", selectedImage: "tabbar1")
    }
    func addChildVC(vc:UIViewController,title:String,image:String,selectedImage:String) -> Void {
//        childVc.title = title;
//        childVc.tabBarItem.image = [UIImage imageNamed:image];
//        childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        [childVc.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -2)];
//        NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
//        textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
//        textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10 * scallWidth];
//        NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
//        selectTextAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
//        selectTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10 * scallWidth];
//
//        [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
//        [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
        vc.title = title
        vc.tabBarItem.image = UIImage.init(named: image)
        vc.tabBarItem.selectedImage = UIImage.init(named: selectedImage)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        vc.tabBarItem.titlePositionAdjustment = UIOffset.init(horizontal: 0, vertical: -2)
        let textAttrs:NSMutableDictionary = NSMutableDictionary()
        textAttrs .setValue(UIFont.systemFont(ofSize: 10 * self.singleLength), forKey: NSAttributedString.Key.font.rawValue)
        textAttrs.setValue(UIColor.white, forKey: NSAttributedString.Key.foregroundColor.rawValue)
        
        let selectedTextAttrs:NSMutableDictionary = NSMutableDictionary()
        selectedTextAttrs .setValue(UIColor.white, forKey: NSAttributedString.Key.foregroundColor.rawValue)
        selectedTextAttrs.setValue(UIFont.systemFont(ofSize: 10 * self.singleLength), forKey: NSAttributedString.Key.font.rawValue)
        
        vc.tabBarItem .setTitleTextAttributes(selectedTextAttrs as? [NSAttributedString.Key : Any], for: UIControl.State.selected)
        vc.tabBarItem .setTitleTextAttributes(textAttrs as? [NSAttributedString.Key: Any], for: UIControl.State.normal)
        self.addChild(vc)
//        textAttrs[NSFontAttributeName] = uif
        
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
