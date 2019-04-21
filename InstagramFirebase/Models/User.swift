//
//  User.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 20/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import Foundation

struct User {
    let username: String
    let profileImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
