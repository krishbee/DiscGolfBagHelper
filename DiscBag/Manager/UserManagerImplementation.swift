//
//  UserManagerImplementation.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//
import Combine
import Foundation

class UserManagerImplementation: UserManager {
    @Published var user: UserSignedIn
    
    init() {
        user = .no
    }
    
    func signIn(username: String, password: String) -> Bool {
        user = .yes(.mock1)
        return true
    }
    
    func signOut() {
        self.user = .no
    }
}
