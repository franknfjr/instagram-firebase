//
//  CustomImageView.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 19/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {
    
    var lastURLUsedToLoadImage: String?
    
    func loadImageView(urlString: String) {
       
        lastURLUsedToLoadImage = urlString
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) {
            (data, response, err) in
            if let err = err {
                print("Failed to fetch post image:", err)
                return
            }
            
            if url.absoluteString != self.lastURLUsedToLoadImage {
                return
            }
            
            guard let imageData = data else { return }
            let photoImage = UIImage(data: imageData)
            
            DispatchQueue.main.async {
                self.image = photoImage
            }
            }.resume()
    }
}
