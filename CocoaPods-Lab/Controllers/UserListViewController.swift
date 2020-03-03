//
//  ViewController.swift
//  CocoaPods-Lab
//
//  Created by Matthew Ramos on 3/3/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class UserListViewController: UIViewController {
    
    let userListView = UserListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        userListView.tableView.dataSource = self
        userListView.tableView.delegate = self
    }
    
    override func loadView() {
        view = userListView
    }
}

extension UserListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        return cell
    }
    
    
}

extension UserListViewController: UITableViewDelegate {
    
}
