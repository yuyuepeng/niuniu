//
//  BaseController.swift
//  swiftProject
//
//  Created by 玉岳鹏 on 2018/10/10.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class BaseController: UIViewController ,UIGestureRecognizerDelegate{

    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel.init(frame: CGRect.init(x: 0, y: statusBarHeight, width: YYScreenWidth, height: navigationBarHeight))
        titleLabel.numberOfLines = 0
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 17)
        titleLabel.textAlignment = NSTextAlignment.center
        return titleLabel
    }()
    lazy var backButton:UIButton = {
        let backButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: navigationBarHeight - statusBarHeight, height: navigationBarHeight - statusBarHeight))
        let image:UIImage = UIImage.init(named: "fanhui")!
        backButton .setImage(image, for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(backButtonClick), for: UIControl.Event.touchUpInside)
        return backButton
    }()
    lazy var navigationBar: UIView = {
        let navigationBar = UIView.init(frame: CGRect.init(x: 0, y: 0, width: YYScreenWidth, height: navigationBarHeight))
        navigationBar.backgroundColor = UIColor().colorWithRGBA(R: 55.0, G: 50.0, B: 50.0, alpha: 1)
        return navigationBar
    }()
    lazy var netmanager: netManager = {
        var netmanager = netManager.init()
        return netmanager
    }()
    lazy var keyboardCancelRecognizer: UITapGestureRecognizer = {
        let keyboardCancelRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(dismissKeyboard))
        keyboardCancelRecognizer.delegate = self
        
        return keyboardCancelRecognizer
    }()
    var mainTitle1:String!
    
    var mainTitle:String {
        set {
            mainTitle1 = newValue
            self.titleLabel.text = newValue
        }
        get {
            return self.mainTitle1
        }
    }
    
    @objc func dismissKeyboard() -> Void {
        NSLog("键盘消失")
        self.view.endEditing(true)
    }
    @objc func backButtonClick() -> Void {
        self.navigationController?.popViewController(animated: true)
    }
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        NSLog("%@", NSStringFromClass((touch.view?.classForCoder)!))
        if touch.view?.isKind(of: NSClassFromString("class") ?? UIView.classForCoder()) ?? false{
            return false
        }
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = UIColor.white
        self.view .addSubview(self.navigationBar)
        self.navigationBar .addSubview(self.titleLabel)
        self.navigationBar.addSubview(self.backButton)
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(keyboradWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDissmiss(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    @objc func keyboradWillShow(notification:Notification) -> Void {
        
    }
    @objc func keyboardWillDissmiss(notification:Notification) -> Void {
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
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
