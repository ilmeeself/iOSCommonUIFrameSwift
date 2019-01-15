//
//  DXDFourViewController.swift
//  AppUITest1
//
//  Created by ilmeeself on 16/2/16.
//  Copyright © 2016年 ilmeeself. All rights reserved.
//

import UIKit

class DXDFourViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var tableview : UITableView!//声明，拆包
    let cellID = "testCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
//        let label = UILabel()
//        label.frame = CGRect(x: 10, y: 10, width: 100, height: 30)
//        label.textColor = UIColor.blue
//        label.text = "abc"
//        self.view.addSubview(label)
//        
//        let btn = UIButton()
//        btn.frame = CGRect(x: 10, y: 50, width: 100, height: 30)
//        btn.setTitle("btn", for: UIControlState.normal)
//        btn.backgroundColor = UIColor.blue
//        btn.tintColor = UIColor.white
//        btn.addTarget(self, action: #selector(DXDFourViewController.btnClick), for: UIControlEvents.touchUpInside)
//        self.view.addSubview(btn)

        //初始化列表
        self.tableview = UITableView(frame: CGRect(x:0, y:0 ,width:kScreenWidth ,height:kScreenHeight), style: UITableViewStyle.grouped)//初始化
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.tableview.rowHeight = 60
        self.tableview.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellID)
        self.view.addSubview(self.tableview)
    }
    
    
    
    //设置分组数目
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //返回的cell的行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        if section == 1 {
            return 3
        }else{
            return 1
        }
    }
    
    //  cell内容的显示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*
         //cell的写法1：
         var cell = tableView.dequeueReusableCellWithIdentifier(cellID) as? UITableViewCell
         if cell == nil {
         cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellID)
         }
         cell!.textLabel!.text = self.dataArray[indexPath.row] as? String
         return cell!
         */
        
        // cell的写法2：
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath as IndexPath)
        if indexPath.section == 0 {
            cell.textLabel!.text = "标签管理"
        }
        if indexPath.section == 1 {
            if indexPath.row == 0{
                cell.textLabel!.text = "修改密码"
            }
            if indexPath.row == 1{
                cell.textLabel!.text = "ToucdID解锁"
            }
            if indexPath.row == 2 {
                cell.textLabel!.text = "关于App"
            }
        }
        if indexPath.section == 2 {
            cell.textLabel!.text = "退出登录"
        }
        return cell
        
    }
    
    //  cell选中时的状态
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    // 设置返回的cell的高度
    //    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    //        return 60.0
    //    }
    
    // 可以被编辑
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // 确定编辑模式（默认是滑动删除模式）
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        // 设置编辑模式为删除
        return  UITableViewCellEditingStyle.delete
    }
    
    // 具体编辑操作（默认删除操作）
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
    }
    
    // 允许移动某行（排序）
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // 实现排序
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
}
