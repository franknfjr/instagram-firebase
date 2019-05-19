//
//  PreviewPhotoContainerView.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 19/05/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import UIKit

class PreviewPhotoContainerView: UIView {
    
    let previewImageView: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        addSubview(previewImageView)
        previewImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBotton: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
