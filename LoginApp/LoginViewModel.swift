//
//  LoginViewModel.swift
//  LoginApp
//
//  Created by iPhone Apps Nano Nino on 28/12/24.
//

import Foundation

class LoginViewModel {
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService()) {
        self.networkService = networkService
    }
    
    func login(email: String, password: String, completion: @escaping (String?) -> Void) {
        networkService.login(email: email, password: password) { result in
            switch result {
            case .success(let user):
                completion("Welcome, \(user.name)!")
            case .failure:
                completion("Login failed. Please try again.")
            }
        }
    }
}
