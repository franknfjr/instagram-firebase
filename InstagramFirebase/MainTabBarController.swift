//
//  MainTabBarController.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 13/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redVC = UIViewController()
        redVC.view.backgroundColor = .red
        
        let navController = UINavigationController(rootViewController: redVC)
        
        viewControllers = [navController]
    }
}
