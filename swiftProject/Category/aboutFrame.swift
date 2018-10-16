//
//  aboutFrame.swift
//  swiftProject
//
//  Created by 扶摇先生 on 2018/10/15.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//


import UIKit

class aboutFrame: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
extension UIView {
  
    public var x : CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var rect = self.frame
            rect.origin.x = newValue
            self.frame = rect
        }
    }
    public var y : CGFloat{
        get {
            return self.frame.origin.y
        }
        set {
            var rect = self.frame
            rect.origin.y = newValue
            self.frame = rect
        }
    }
    public var width:CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var rect = self.frame
            rect.size.width = newValue
            self.frame = rect
        }
    }
    public var height:CGFloat{
        get {
            return self.frame.size.height
        }
        set {
            var rect = self.frame
            rect.size.height = newValue
            self.frame = rect
        }
    }
    public var centerX : CGFloat {
        get {
            return self.center.x
        }
        set {
            var point = self.center
            point.x = newValue
            self.center = point
        }
    }
    public var centerY : CGFloat {
        get {
            return self.center.y
        }
        set {
            var point = self.center
            point.y = newValue
            self.center = point
        }
    }
    public var bottom:CGFloat{
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set {
            var rect = self.frame
            
            rect.origin.y = CGFloat(newValue )  - CGFloat(self.frame.size.height )
            self.frame = rect
        }
    }
    public var right:CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set {
            var rect = self.frame
            
            rect.origin.x = CGFloat(newValue )  - CGFloat(self.frame.size.width )
            self.frame = rect
        }
    }

}
