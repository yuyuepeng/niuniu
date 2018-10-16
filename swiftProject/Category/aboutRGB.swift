//
//  aboutRGB.swift
//  swiftProject
//
//  Created by 扶摇先生 on 2018/10/15.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class aboutRGB: UIColor {

}

extension UIColor {
    public func colorWithRGBA(R:CGFloat!,G:CGFloat!,B:CGFloat!,alpha:CGFloat!) -> UIColor {
        return UIColor.init(red: R/255.0, green: G/255.0, blue: B/255.0, alpha: alpha)
    }
}
