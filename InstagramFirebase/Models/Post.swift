//
//  Post.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 19/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import Foundation

struct Post {
    
    let user: User
    let imageUrl: String
    let caption: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
    }
}
