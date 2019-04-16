//
//  MainTabBarController.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 13/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import UIKit
import Firebase

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let loginController = LoginController()
                let navController = UINavigationController(rootViewController: loginController)
                self.present(navController, animated: true, completion: nil)
            }
            return
        }
        
        setupViewControllers()       
    }
    
    func setupViewControllers() {
        // home
        let homeNavController = templateNavController(unselectedImage:  #imageLiteral(resourceName: "home_unselected"), selectedImage:  #imageLiteral(resourceName: "home_selected"))
        
        // search
        let searchNavController = templateNavController(unselectedImage:  #imageLiteral(resourceName: "search_unselected"), selectedImage:  #imageLiteral(resourceName: "search_selected"))
        
        // plus
        let plusNavController = templateNavController(unselectedImage:  #imageLiteral(resourceName: "plus_unselected"), selectedImage:  #imageLiteral(resourceName: "plus_unselected"))
        
        // like
        let likeNavController = templateNavController(unselectedImage:  #imageLiteral(resourceName: "like_unselected"), selectedImage:  #imageLiteral(resourceName: "like_selected"))
        
        // user profile
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        
        let userProfileNavController = UINavigationController(rootViewController: userProfileController)
        userProfileNavController.tabBarItem.image = #imageLiteral(resourceName: "profile_unselected")
        userProfileNavController.tabBarItem.selectedImage = #imageLiteral(resourceName: "profile_selected")
        
        tabBar.tintColor = .black
        
        viewControllers = [homeNavController, searchNavController, plusNavController, likeNavController, userProfileNavController]
    }
    
    fileprivate func templateNavController(unselectedImage: UIImage, selectedImage: UIImage) -> UINavigationController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselectedImage
        navController.tabBarItem.selectedImage = selectedImage
        
        return navController
    }
}
