//
//  UserDetailViewController.swift
//  CocoaPods-Lab
//
//  Created by Matthew Ramos on 3/3/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {
    
    let userDetailView = UserDetailView()

    override func viewDidLoad() {
        super.viewDidLoad()
        userDetailView.backgroundColor = .white
    }
    
    override func loadView() {
        view = userDetailView
    }
    
}
