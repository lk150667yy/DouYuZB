//
//  MainViewController.swift
//  DYZB
//
//  Created by zhys_lk on 2018/9/18.
//  Copyright © 2018年 zhys_lk. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
    }
    
    private func addChildVc(storyName : String){
        // 1.通过storyboard获取控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        // 2.将childVc作为控制器
        addChildViewController(childVc)
    }

}
