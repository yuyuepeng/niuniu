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
        let loginButton = UIButton()
        loginButton.setTitle("登录", for: UIControl.State.normal)
        loginButton.addTarget(self, action: #selector(loginButtonClick), for: UIControl.Event.touchUpInside)
        
        return loginButton
    }()
//    var timer:
    @objc func loginButtonClick() -> Void {
        
    }
    func createViews() -> Void {
        self.view .addSubview(self.headerImage)
        self.view .addSubview(self.loginButton)
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
