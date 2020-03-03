//
//  UserDetailView.swift
//  CocoaPods-Lab
//
//  Created by Matthew Ramos on 3/3/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class UserDetailView: UIView {
    
    public lazy var userImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "person.fill")
        iv.backgroundColor = .white
        return iv
    }()
    
    public lazy var userNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    public lazy var addressLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    public lazy var phoneNumLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    public lazy var DOBLabel: UILabel = {
        let label = UILabel()
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
    }
    
    private func setupImageView() {
        addSubview(userImage)
        userImage.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(safeAreaLayoutGuide)
        }
    }
}
