//
//  FirebaseUtils.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 23/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import Foundation
import Firebase

extension Database {
    static func fetchUserWithUID(uid: String, completion: @escaping (User) -> ()) {
        let ref_users = Database.database().reference().child("users").child(uid)
        
        ref_users.observeSingleEvent(of: .value, with: { (snapshot) in
            guard let userDictionary = snapshot.value as? [String: Any] else { return }
            
            let user = User(uid: uid, dictionary: userDictionary)
            
            completion(user)
            
        }) { (err) in
            print("Failed to fetch user for posts:", err)
        }
        
    }
}
