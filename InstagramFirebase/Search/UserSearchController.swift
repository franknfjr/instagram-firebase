//
//  UserSearchController.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 23/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import UIKit

class UserSearchController: UICollectionViewController {
    
    let searchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.placeholder = "Enter username"
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor = UIColor.rgb(red: 230, green: 230, blue: 230)
        return sb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        
        navigationController?.navigationBar.addSubview(searchBar)
        
        let navBar = navigationController?.navigationBar
        
        searchBar.anchor(top: navBar?.topAnchor, left: navBar?.leftAnchor, bottom: navBar?.bottomAnchor, right: navBar?.rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBotton: 0, paddingRight: 8, width: 0, height: 0)
    }
}
