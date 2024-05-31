//
//  UserManager.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//
import Combine
import Foundation

protocol UserManager: ObservableObject {
    var user: UserSignedIn { get }
    
    func signIn(username: String, password: String) -> Bool 
    
    func signOut()
}
