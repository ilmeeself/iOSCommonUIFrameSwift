//
//  DXDOneViewController.swift
//  AppUITest1
//
//  Created by ilmeeself on 16/2/16.
//  Copyright © 2016年 ilmeeself. All rights reserved.
//

import UIKit

class DXDOneViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var tableview : UITableView!//声明，拆包
    let cellID = "testCellID"
    var cardArray : Array<String>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.cardArray = ["11","22","33"];
        
        
        
        //初始化列表
        self.tableview = UITableView(frame: CGRect(x:0, y:0 ,width:kScreenWidth ,height:kScreenHeight), style: UITableViewStyle.grouped)//初始化
        self.tableview.delegate = self
        self.tableview.dataSource = self
//        self.tableview.rowHeight = 60
        self.tableview.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellID)
        self.view.addSubview(self.tableview)
    }
    
    
    
    //设置分组数目
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //返回的cell的行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cardArray.count
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
        if indexPath.row == 0 {
            let contentView = self.createCardWithStyle(_styleNum: 2)
            cell.contentView .addSubview(contentView)
        }else if indexPath.row == 1 {
            let contentView = self.createCardWithStyle(_styleNum: 1)
            cell.contentView .addSubview(contentView)
        }else{
            cell.textLabel!.text = self.cardArray[indexPath.row]
        }
        
        return cell
        
    }
    
    //  cell选中时的状态
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    // 设置返回的cell的高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return kScreenWidth+80
        }else{
            return 60.0
        }
    }
    
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
    
    func createCardWithStyle(_styleNum: NSNumber) -> UIView {
        var bgView : UIView
        bgView = UIView.init()
        bgView.backgroundColor = UIColor.white
        
        
        if _styleNum.intValue == 1 {
            bgView.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenWidth+80)
            
            var imageView : UIImageView
            imageView = UIImageView.init()
            imageView.backgroundColor = UIColor.red
            imageView.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenWidth)
            
            var label1 : UILabel
            label1 = UILabel.init()
            label1.backgroundColor = UIColor.white
            label1.frame = CGRect(x: 10, y: kScreenWidth, width: kScreenWidth-20, height: 40)
            label1.text = "搭配List:xxx+xxx+xxx"
            
            var label2 : UILabel
            label2 = UILabel.init()
            label2.backgroundColor = UIColor.white
            label2.frame = CGRect(x: 10, y: kScreenWidth+40, width: kScreenWidth-20, height: 40)
            label2.text = "评分:x分/日期:xxx"
            
            bgView .addSubview(imageView)
            bgView .addSubview(label1)
            bgView .addSubview(label2)
            
        }else if _styleNum.intValue == 2{
            bgView.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: 60)
            
            var label1 : UILabel
            label1 = UILabel.init()
            label1.backgroundColor = UIColor.white
            label1.frame = CGRect(x: 10, y: 10, width: kScreenWidth-20, height: 40)
            label1.text = "你今天还没有记录，快来创建一下？"
            
            bgView .addSubview(label1)
        }
        
        return bgView
    }
}
