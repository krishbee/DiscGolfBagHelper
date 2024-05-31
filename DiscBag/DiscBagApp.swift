//
//  DiscBagApp.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 28/05/2024.
//

import SwiftUI

@main
struct DiscBagApp: App {
    @StateObject private var userManager = UserManagerImplementation()
    
    var body: some Scene {
        WindowGroup {
            LandingPage()
                .environmentObject(userManager)
        }
    }
}
