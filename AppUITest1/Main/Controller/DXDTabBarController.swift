//
//  DXDTabBarController.swift
//  AppUITest1
//
//  Created by ilmeeself on 16/2/16.
//  Copyright © 2016年 ilmeeself. All rights reserved.
//

import UIKit

class DXDTabBarController: UITabBarController,TabBarDelegate {
    
    let popView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.configPopView()
        self.setUpAllChildViewController()
        let tabBar = TabBar()
        tabBar.d1 = self//关键
        
        self.setValue(tabBar, forKeyPath: "tabBar")
        
    }
    
    func setUpAllChildViewController(){
        let oneVC = DXDOneViewController()
        self.setUpOneChildViewController(childViewController: oneVC, title: "首页", image: "fa-home")
        let twoVC = DXDTwoViewController()
        self.setUpOneChildViewController(childViewController: twoVC, title: "衣柜", image: "fa-wrench")
        let threeVC = DXDThreeViewController()
        self.setUpOneChildViewController(childViewController: threeVC, title: "搭配", image: "fa-filetext")
        let fourVC = DXDFourViewController()
        self.setUpOneChildViewController(childViewController: fourVC, title: "我的", image: "fa-user")
    }
    
    func setUpOneChildViewController(childViewController:UIViewController,title:String,image:String)-> (Void){
        
        childViewController.navigationItem.title = title
        childViewController.tabBarItem.image = UIImage(named: image)
        childViewController.tabBarItem.title = title
        
        let navC = UINavigationController(rootViewController: childViewController)
//        navC.navigationBar.setBackgroundImage(UIImage(named: "barcolor"), for: UIBarMetrics.default)
//        navC.navigationBar.alpha = 0.4
//        navC.navigationBar.barStyle = UIBarStyle.black
        self.addChildViewController(navC)
    }
    
    func configPopView(){
        let s = UIScreen.main
        let width = s.bounds.size.width
        let height = s.bounds.size.height
        self.popView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.popView.backgroundColor = UIColor.white
        //底部的关闭按钮
        let btn = UIButton(type:UIButtonType.custom)
        btn.frame = CGRect(x: 0, y: height-49, width: width, height: 49);
        btn.setImage(UIImage(named: "fa-cancel"), for: UIControlState())
        btn.backgroundColor = UIColor(red: 0.220, green: 0.223, blue: 0.236, alpha: 0.2)
        btn.addTarget(self, action:#selector(DXDTabBarController.tapX) , for: UIControlEvents.touchUpInside)
        self.popView.addSubview(btn)
    }
    
    func tapX(){
        self.popView.removeFromSuperview()
    }
    
    func addBtnDidClick(){
        print("here")
        UIView.animate(withDuration: 0.5, animations: {self.view.addSubview(self.popView)})
    }
}
