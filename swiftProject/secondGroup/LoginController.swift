//
//  LoginController.swift
//  swiftProject
//
//  Created by 玉岳鹏 on 2018/10/15.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class LoginController: BaseController {
    
    lazy var headerImage: UIImageView = {
        let headerImage = UIImageView.init(frame: CGRect.init(x: 275 * singleLength, y: 192 * singleLength, width: 200 * singleLength, height: 140 * singleLength))
        headerImage.image = UIImage.init(named: "icon_zhenTandenglu")
        return headerImage
    }()
    lazy var loginButton: UIButton = {
        let loginButton = UIButton.init(frame: CGRect.init(x: 30, y: 150, width: YYScreenWidth - 60, height: 80))
        loginButton.setTitle("登录", for: UIControl.State.normal)
        loginButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        loginButton.backgroundColor = UIColor.lightGray
        loginButton.width = 600 * singleLength
        loginButton.height = 90 * singleLength
        loginButton.addTarget(self, action: #selector(loginButtonClick), for: UIControl.Event.touchUpInside)
        return loginButton
    }()

    var line1:UIView!
    var line2:UIView!
    
    
    var timer:Timer!
    
    @objc func loginButtonClick() -> Void {
        
    }
    func createViews() -> Void {
        self.view .addSubview(self.headerImage)
        self.loginButton.centerX = YYScreenWidth/2
        self.loginButton.bottom = YYScreenHeigth - 160 * singleLength
        
        self.view .addSubview(self.loginButton)
        self.line1 = UIView.init(frame: CGRect.init(x: 30 * singleLength, y: self.headerImage.bottom + 321 * singleLength, width: YYScreenWidth - 60 * singleLength, height: 2 * singleLength))
        self.line1.backgroundColor = UIColor.init().colorWithRGBA(R: 74, G: 74, B: 74, alpha: 1)
        self.view .addSubview(self.line1)
        self.line2 = UIView.init(frame: CGRect.init(x: 30 * singleLength, y: self.line1.bottom + 132 * singleLength, width: YYScreenWidth - 60 * singleLength, height: 2 * singleLength))
        self.line2.backgroundColor = UIColor().colorWithRGBA(R: 74, G: 74, B: 74, alpha: 1)
        
        
        
        self.view.addSubview(self.line2)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createViews()

        // Do any additional setup after loading the view.
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
