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
    var users = [User]() {
        didSet {
            DispatchQueue.main.async {
                self.userListView.tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getUsers()
        userListView.tableView.dataSource = self
        userListView.tableView.delegate = self
        userListView.tableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "userCell")
    }
    
    override func loadView() {
        view = userListView
    }
    
    func getUsers() {
        UserAPIClient.fetchUsers { [weak self] (result) in
            switch result {
            case .failure(let error):
                DispatchQueue.main.async {
                    self?.showAlert(title: "Couldn't fetch users", message: "Error: \(error)")
                }
            case .success(let users):
                self?.users = users
            }
            
        }
    }
}


extension UserListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as? UserCell else {
            fatalError("Couldn't downcast to UserCell, check cellForRowAt")
        }
        let user = users[indexPath.row]
        cell.configureCell(user: user)
        return cell
    }
    
    
}

extension UserListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        102
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = users[indexPath.row]
        navigationController?.pushViewController(UserDetailViewController(user: user), animated: true)
    }
}
