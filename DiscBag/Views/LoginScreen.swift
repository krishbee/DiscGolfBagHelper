//
//  LoginScreen.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

import SwiftUI

struct LoginScreen: View {
    @EnvironmentObject var userManager: UserManagerImplementation
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 12) {
            TextFieldAndLabel(
                input: $email,
                labelText: "E-mail",
                isSecure: false
            )
            TextFieldAndLabel(
                input: $password,
                labelText: "password",
                isSecure: true
            )
            Button {
                userManager.signIn(username: email, password: password)
            } label: {
                Text("Login")
                    .font(.init(.custom(.init(), size: 18)))
            }
            .padding(.horizontal, 28)
            .background(Color.blue)
            .foregroundStyle(.white)
            .cornerRadius(5)
            .padding(.top, 8)
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    LoginScreen(
        email: "",
        password: ""
    )
}
