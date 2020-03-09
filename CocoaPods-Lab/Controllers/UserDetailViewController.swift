//
//  UserDetailViewController.swift
//  CocoaPods-Lab
//
//  Created by Matthew Ramos on 3/3/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit
import Kingfisher

class UserDetailViewController: UIViewController {
    
    let userDetailView = UserDetailView()
    let user: User
    
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        navigationItem.title = "\(user.name.first) \(user.name.last)"
    }
    
    override func loadView() {
        view = userDetailView
    }
    
    func updateUI() {
        userDetailView.backgroundColor = .white
        userDetailView.userNameLabel.text = "\(user.name.title). \(user.name.first) \(user.name.last)"
        userDetailView.addressLabel.text = "\(user.location.street), \(user.location.city), \(user.location.state)"
        userDetailView.phoneNumLabel.text = user.phone
        userDetailView.DOBLabel.text = user.dob.date + ", \(user.dob.age) years old"
        let url = URL(string: user.picture.large)
        userDetailView.userImage.kf.setImage(with: url)

    }
    
}
