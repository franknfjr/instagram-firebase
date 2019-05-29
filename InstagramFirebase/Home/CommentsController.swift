//
//  CommentsController.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 25/05/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import UIKit

class CommentsController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .red
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarController?.tabBar.isHidden = false
    }
    
    override var inputAccessoryView: UIView? {
        get {
            let containerView = UIView()
            containerView.backgroundColor = .white
            containerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
            
            return containerView
        }
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
}
