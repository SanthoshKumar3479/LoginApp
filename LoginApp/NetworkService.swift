//
//  NetworkService.swift
//  LoginApp
//
//  Created by iPhone Apps Nano Nino on 28/12/24.
//

import Foundation
import Alamofire

protocol NetworkServiceProtocol {
    func login(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void)
}

class NetworkService: NetworkServiceProtocol {
    func login(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        let url = "https://jsonplaceholder.typicode.com/users/1"
        AF.request(url).responseDecodable(of: User.self) { response in
            switch response.result {
            case .success(let user):
                completion(.success(user))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
