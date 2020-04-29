//
//  ProfileViewController.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imageAvatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageAvatar.makeRounded()
    }
}
