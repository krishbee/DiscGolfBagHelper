//
//  UserSettingsScreen.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

import SwiftUI

struct UserSettingsScreen: View {
    @EnvironmentObject private var userManager: UserManagerImplementation
    
    var body: some View {
        Button {
            userManager.signOut()
        } label: {
            Text("Log out")
        }
    }
}

#Preview {
    UserSettingsScreen()
}
