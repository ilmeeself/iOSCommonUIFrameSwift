//
//  LoginViewController.swift
//  AppUITest1
//
//  Created by 杜晓东 on 2017/8/7.
//  Copyright © 2017年 ilmeeself. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    init() {
        super.init(nibName: "LoginXib", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(nibName: "LoginXib", bundle: nil)
    }

    @IBOutlet var EmailTextField: UITextField!
    @IBOutlet var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //字体大小
        EmailTextField.setValue(UIFont.systemFont(ofSize: 15), forKeyPath: "_placeholderLabel.font")
        //字体颜色
        EmailTextField.setValue(UIColor.white, forKeyPath: "_placeholderLabel.textColor")
        
        //字体大小
        PasswordTextField.setValue(UIFont.systemFont(ofSize: 15), forKeyPath: "_placeholderLabel.font")
        //字体颜色
        PasswordTextField.setValue(UIColor.white, forKeyPath: "_placeholderLabel.textColor")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
