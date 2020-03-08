//
//  UserDetailView.swift
//  CocoaPods-Lab
//
//  Created by Matthew Ramos on 3/3/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit
import SnapKit

class UserDetailView: UIView {
    
    public lazy var userImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "person.fill")
        iv.backgroundColor = .white
        return iv
    }()
    
    public lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "User Name"
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        return label
    }()
    
    public lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.text = "Address"
        label.textAlignment = .center
        return label
    }()
    
    public lazy var phoneNumLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone Number"
        label.textAlignment = .center
        return label
    }()
    
    public lazy var DOBLabel: UILabel = {
        let label = UILabel()
        label.text = "Birthdate"
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupImageView()
        setupUserNameLabel()
        setupAddressLabel()
        setupPhoneNumLabel()
        setupDOBLabel()
        
    }
    
    private func setupImageView() {
        addSubview(userImage)
        userImage.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(safeAreaLayoutGuide).multipliedBy(0.40)
        }
    }
    
    private func setupUserNameLabel() {
        addSubview(userNameLabel)
        userNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(userImage.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(safeAreaLayoutGuide).offset(-20)
            
    }
    }
    
    private func setupAddressLabel() {
        addSubview(addressLabel)
        addressLabel.snp.makeConstraints { (make) in
            make.top.equalTo(userNameLabel.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(safeAreaLayoutGuide).offset(-20)
        }
    }
    
    private func setupPhoneNumLabel() {
        addSubview(phoneNumLabel)
        phoneNumLabel.snp.makeConstraints { (make) in
            make.top.equalTo(addressLabel.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(safeAreaLayoutGuide).offset(-20)
        }
        
    }
    
    private func setupDOBLabel() {
        addSubview(DOBLabel)
        DOBLabel.snp.makeConstraints { (make) in
            make.top.equalTo(phoneNumLabel.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(safeAreaLayoutGuide).offset(-20)
        }
    }
}
