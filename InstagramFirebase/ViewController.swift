//
//  ViewController.swift
//  InstagramFirebase
//
//  Created by Frank Ferreira on 10/04/19.
//  Copyright © 2019 Frank Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let plusPhotoButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "plus_photo"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
    }


}

