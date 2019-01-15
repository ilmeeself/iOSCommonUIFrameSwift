//
//  DXDThreeViewController.swift
//  AppUITest1
//
//  Created by ilmeeself on 16/2/16.
//  Copyright © 2016年 ilmeeself. All rights reserved.
//

import UIKit

class DXDThreeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.popToLogin()
    }
    
    func popToLogin() -> Void{
        let loginVC = LoginViewController()
        self.navigationController!.pushViewController(loginVC, animated: true)
    }
}
