//
//  Post.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 19/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import Foundation

struct Post {
    let imageUrl: String
    
    init(dictionary: [String: Any]) {
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
