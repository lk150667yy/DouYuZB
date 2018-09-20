//
//  UIColor-Extension.swift
//  DYZB
//
//  Created by zhys_lk on 2018/9/18.
//  Copyright © 2018年 zhys_lk. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r : CGFloat,g : CGFloat, b : CGFloat) {
        if #available(iOS 10.0, *) {
            self.init(displayP3Red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
        } else {
            // Fallback on earlier versions
            self.init(r: r/255.0, g: g/255.0, b: b/255.0)
        }
    }
}
