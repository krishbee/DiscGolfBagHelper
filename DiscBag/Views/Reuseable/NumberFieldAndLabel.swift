//
//  NumberFieldAndLabel.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 30/05/2024.
//

import SwiftUI

struct NumberFieldAndLabel: View {
    @State var input: String
    @Binding var doubleValue: Double
    var labelText: String
    var isSecure: Bool
    var textfieldPlaceholderText: String?
    
    var body: some View {
        HStack(spacing: 0) {
            Text(labelText)
                .font(.callout)
                .textCase(.uppercase)
                .frame(width: 160, height: 40, alignment: .leading)
            
            TextField(textfieldPlaceholderText ?? "", text: $input)
                .keyboardType(.decimalPad)
                .onChange(of: input) { oldValue, newValue in
                    let filtered = newValue.filter { "-0123456789.".contains($0) }
                    
                    if filtered != newValue {
                        input = filtered
                    }
                    
                    // Ensure only one decimal point is allowed
                    let decimalCount = input.filter { $0 == "." }.count
                    if decimalCount > 1 {
                        input = String(input.dropLast())
                    }
                    let negativeCount = input.filter { $0 == "-" }.count
                    if negativeCount > 1 {
                        input = input.replacingOccurrences(of: "-", with: "")
                        input.insert("-", at: input.startIndex)
                    }
                    
                    // Update the double value
                    doubleValue = Double(input) ?? 0.0
                }
                .font(.callout)
                .frame(maxWidth: 200, maxHeight: 40)
                .padding(.horizontal, 12)
                .border(Color.gray)
        }
    }
}

#Preview {
    NumberFieldAndLabel(
        input: "",
        doubleValue: .constant(0.0),
        labelText: "numberfield",
        isSecure: false,
        textfieldPlaceholderText: ""
    )
}
