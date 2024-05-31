//
//  TextField+Label.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

import SwiftUI

struct TextFieldAndLabel: View {
    @Binding var input: String
    var labelText: String
    var isSecure: Bool
    var textfieldPlaceholderText: String = ""
    
    var body: some View {
        HStack(spacing: 0) {
            Text(labelText)
                .font(.callout)
                .textCase(.uppercase)
                .frame(width: 160, height: 40)
            Spacer()
            if isSecure {
                SecureField(textfieldPlaceholderText, text: $input)
                    .font(.callout)
                    .frame(maxWidth: 200, maxHeight: 40)
                    .padding(.horizontal, 12)
                    .border(Color.gray)
            } else {
                TextField(textfieldPlaceholderText, text: $input)
                    .font(.callout)
                    .frame(maxWidth: 200, maxHeight: 40)
                    .padding(.horizontal, 12)
                    .border(Color.gray)
            }
            Spacer()
        }
        .padding(.horizontal, 50)
        .padding(.vertical, 10)
    }
}

#Preview {
    TextFieldAndLabel(
        input: .constant(""),
        labelText: "password",
        isSecure: false
    )
}
