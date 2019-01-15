//
//  TabBar.swift
//  AppUITest1
//
//  Created by ilmeeself on 16/2/16.
//  Copyright © 2016年 ilmeeself. All rights reserved.
//

import UIKit

class TabBar: UITabBar {
    var addBtn = UIButton()
    var d1:TabBarDelegate?
    
    //重写父类UITabBar的构造方法
    override init(frame: CGRect) {
        super.init(frame:frame)
        //print("yes")
//        let addBtn = UIButton()
//        addBtn.setBackgroundImage(UIImage(named: "fa-sendm"), for: UIControlState())
//        addBtn.setImage(UIImage(named: "fa-sendm"), for: UIControlState())
//        addBtn.frame.size = (addBtn.currentBackgroundImage?.size)!
//        addBtn.addTarget(self, action: #selector(TabBar.addBtnClick), for: UIControlEvents.touchUpInside)
//        self.addBtn = addBtn
//        self.addSubview(addBtn)
    }
    
    //这是一个可失败的构造器，因为不用载入自己写好的Nib文件
    //required关键字代表这是UITabBar父类的子类必须实现的
     required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

//    override func layoutSubviews() {
//        super.layoutSubviews()
//        //中间加号按钮的位置
//        self.addBtn.center.x = self.frame.size.width * 0.5
//        //print(self.addBtn.center.x)
//        self.addBtn.center.y = self.frame.size.height * 0.5
//        //print(self.addBtn.center.y)
//
//        //重新布局tabBar上的tabBarItem
//        let tabBarItemWidth = self.frame.size.width / 5;
//        var tabBarItemIndex = 0;
//
//        for i in 0...self.subviews.count-1{
//            var childItem:UIView
//            childItem = self.subviews[i]
//            if childItem.isKind(of: NSClassFromString("UITabBarButton")!){
//                childItem.frame.size.width = tabBarItemWidth
//                childItem.frame.origin.x = CGFloat(tabBarItemIndex) * tabBarItemWidth
//                tabBarItemIndex += 1
//                if tabBarItemIndex == 2{
//                    tabBarItemIndex += 1
//                }
//            }
//        }
//
//        /*
//        for var childItem:UIView in self.subviews{
//            if childItem.isKindOfClass(NSClassFromString("UITabBarButton")!){
//                childItem.frame.size.width = tabBarItemWidth
//                childItem.frame.origin.x = CGFloat(tabBarItemIndex) * tabBarItemWidth
//                tabBarItemIndex++
//                if tabBarItemIndex == 2{
//                    tabBarItemIndex++
//                }
//            }
//        }*/
//
//    }
    
//    func addBtnClick(){
//        self.d1!.addBtnDidClick()
//    }
}
