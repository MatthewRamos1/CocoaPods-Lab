//
//  UserAPIClient.swift
//  CocoaPods-Lab
//
//  Created by Matthew Ramos on 3/8/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation
import Alamofire

struct UserAPIClient {
    static func fetchUsers(completion: @escaping (AFResult<[User]>) -> ()) {
        let endpointURLString = "https://randomuser.me/api/?results=20"
        
        guard let url = URL(string: endpointURLString) else {
            return
        }
        
        AF.request(url).response { (response) in
            if let error = response.error {
                completion(.failure(error))
            } else if let data = response.data {
                do{
                    let results = try JSONDecoder().decode(ResultsWrapper.self, from: data)
                    let users = results.results
                    completion(.success(users))
                } catch {
                    print("Couldn't decode data")
                }
            }
        }
    }
}
