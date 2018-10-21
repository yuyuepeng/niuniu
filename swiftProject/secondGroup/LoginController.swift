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
        loginButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        loginButton.backgroundColor = UIColor.black
        loginButton.width = 600 * singleLength
        loginButton.height = 90 * singleLength
        loginButton.addTarget(self, action: #selector(loginButtonClick), for: UIControl.Event.touchUpInside)
        return loginButton
    }()

    var line1:UIView!
    var line2:UIView!
    
    
    var timer:Timer!
    
    lazy var phoneNum: UITextField = {
        let phoneNum : UITextField = UITextField.init(frame: CGRect.init(x: YYScreenWidth - 452.5 * singleLength, y: self.headerImage.bottom + 235 * singleLength + 2 * singleLength
            , width: 410 * singleLength, height: 27 * singleLength))
        phoneNum.textAlignment = NSTextAlignment.right
        phoneNum.placeholder = "请输入手机号"
        phoneNum.keyboardType = UIKeyboardType.numberPad
        phoneNum.font = UIFont.systemFont(ofSize: 13)
        phoneNum.clearButtonMode = UITextField.ViewMode.always
        return phoneNum
    }()
    
    lazy var yanzhengCode: UITextField = {
        let size:CGSize = NSString(string: "手机号登录").size(withAttributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13)])

        let yanzhengCode:UITextField = UITextField.init(frame: CGRect.init(x: 95 * singleLength + size.width + 40 * singleLength, y: self.headerImage.bottom + 235 * singleLength + 146 * singleLength + 2 * singleLength, width: 235 * singleLength, height: 27 * singleLength))
        yanzhengCode.keyboardType = UIKeyboardType.numberPad
        yanzhengCode.textAlignment = NSTextAlignment.left
        yanzhengCode.font = UIFont.systemFont(ofSize: 13)
        yanzhengCode.placeholder = "请输入验证码"
        yanzhengCode.clearButtonMode = UITextField.ViewMode.always
        return yanzhengCode
    }()
    lazy var countTime: UILabel = {
        let  countTime : UILabel = UILabel.init(frame: CGRect.init(x: YYScreenWidth - 257 * singleLength, y: self.headerImage.bottom + 235 * singleLength + 146 * singleLength + 2 * singleLength, width: 235 * singleLength, height: 27 * singleLength))
        countTime.text = "获取验证码"
        countTime.textColor = UIColor.white
        countTime.backgroundColor = UIColor.init().colorWithRGBA(R: 74, G: 74, B: 74, alpha: 1)
//        countTime.
        return countTime
    }()
    
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
//        for (NSInteger i = 0; i <  2; i ++) {
//            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(95 * singleLength, self.headImage.bottom + 235 * singleLength + 146 * singleLength * i, 200 * singleLength, 27 * singleLength)];
//            label.size = [@"手机号登录" sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]}];
//            label.text = arr[i];
//            label.textColor = RGB(74, 74, 74);
//            label.textAlignment = NSTextAlignmentCenter;
//            label.font = [UIFont systemFontOfSize:13];
//            [self.view addSubview:label];
//        }
        let arr:[String] = ["手机号登录","验  证  码"]
        var i = 0
        let size:CGSize = NSString(string: "手机号登录").size(withAttributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13)])
        for str:String in arr {
            let label:UILabel = UILabel.init(frame: CGRect.init(x: 80 * singleLength, y: self.headerImage.bottom + 235 * singleLength + CGFloat(i) * 146 * singleLength, width: 200 * singleLength, height: 27 * singleLength))
            label.text = str
            label.textColor = UIColor().colorWithRGBA(R: 74, G: 74, B: 74, alpha: 1)
            label.textAlignment = NSTextAlignment.center
            label.font = UIFont.systemFont(ofSize: 13)
            
            label.width = size.width
            
            self.view .addSubview(label)
            
//                        label.size = "手机号登录".s
            i += 1
        }
        self.view .addSubview(self.phoneNum)
        self.view .addSubview(self.yanzhengCode)
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
