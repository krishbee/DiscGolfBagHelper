//
//  BagScreen.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

import SwiftUI

struct BagScreen: View {
    @State private var filterQuery: String = ""
    let user: User
    let discsSelection: DiscsSelection
    
    private var items: [Disc] {
        var result = user.allDiscs
        result = result.filter {
            switch discsSelection {
            case .all:
                true
            case .bag:
                $0.inBag
            case .shelf:
                !$0.inBag
            }
        }
        
        if !filterQuery.isEmpty {
            return result.filter {
                $0.name.localizedCaseInsensitiveContains(filterQuery) ||  $0.manufacturer.description.localizedCaseInsensitiveContains(filterQuery) 
            }
        }
        return result
    }
    
    
    
    var body: some View {
        VStack(spacing: 0) {
            TextFieldAndLabel(input: $filterQuery, labelText: "Search", isSecure: false, textfieldPlaceholderText: "disc name")
                .padding(.horizontal, 24)
                .padding(.bottom, 12)
            Group {
                if items.count == 0 {
                    // TODO KFR: lav no results side
                    Text("No results")
                    Spacer()
                } else {
                    ListGridScene(discs: items)
                }
            }
            .navigationTitle("Your discs")
            
        }
        
    }
}

#Preview {
    BagScreen(user: .mock1, discsSelection: .all)
}
