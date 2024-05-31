//
//  LoginScreen.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

import SwiftUI

struct LoginScreen: View {
    @EnvironmentObject var userManager: UserManagerImplementation
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            TextFieldAndLabel(
                input: $username,
                labelText: "username",
                isSecure: false
            )
            TextFieldAndLabel(
                input: $password,
                labelText: "password",
                isSecure: true
            )
            Button {
                userManager.signIn(username: username, password: password)
            } label: {
                Text("Login")
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 28)
            .background(Color.blue)
            .foregroundStyle(.white)
            .cornerRadius(5)
            .padding(.top, 20)
        }
    }
}

#Preview {
    LoginScreen(
        username: "",
        password: ""
    )
}
