//
//  UIBarButtonItem-Extension.swift
//  DYZB
//
//  Created by zhys_lk on 2018/9/18.
//  Copyright © 2018年 zhys_lk. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    /*
    class func createItem(imageName : String, highImageName : String, size : CGSize)->UIBarButtonItem {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        return UIBarButtonItem(customView: btn)
    }*/
    // 遍历构造函数 1> convenience 开头 2> 在构造函数中必须明确调用一个设计的构造函数（self）
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSize(width: 0, height: 0)) {
        // 1. 创建UIButton
        let btn = UIButton()
        // 2. 设置btn的图片
        btn.setImage(UIImage(named: imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        // 3. 设置btn的尺寸
        if size == CGSize(width: 0, height: 0) {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        }
        // 4.创建UIBarButtonItem
        self.init(customView: btn)
    }
}
