//
//  DropDownPickerAndLabel.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 30/05/2024.
//

import SwiftUI

struct DropDownPickerAndLabel<T: CaseIterable & Describable>: View {
    @Binding var selectedItem: T
    let list: [T]
    var labelText: String
    
    
    init(selectedItem: Binding<T>, list: T.Type, labelText: String) {
        self._selectedItem = selectedItem
        self.list = Array(list.allCases).sorted(by: {$0.description < $1.description || $1.description == "Unknown"})
        self.labelText = labelText
    }
    var body: some View {
        HStack(spacing: 0) {
            Text(labelText)
                .font(.callout)
                .textCase(.uppercase)
            
            Spacer()
            Picker("", selection: $selectedItem) {
                ForEach(list) {
                    Text($0.description).tag($0 as T)
                }
            }
            .pickerStyle(.automatic)
        }
    }
}

#Preview {
    DropDownPickerAndLabel(selectedItem: .constant(Manufacturer.mvp), list: Manufacturer.self, labelText: "Manufacturer")
}
