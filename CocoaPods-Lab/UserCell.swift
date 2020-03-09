//
//  UserCell.swift
//  CocoaPods-Lab
//
//  Created by Matthew Ramos on 3/3/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit
import Kingfisher

class UserCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    func configureCell(user: User) {
        userNameLabel.text = "\(user.name.title). \(user.name.first) \(user.name.last)"
        emailLabel.text = user.email
        let url = URL(string: user.picture.large)
        userImage.kf.setImage(with: url)
    }
}
