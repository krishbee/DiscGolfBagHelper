//
//  AllDiscsPreviewScene.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 30/05/2024.
//

import SwiftUI

struct AllDiscsPreviewScene: View {
    private let discImageSize: CGFloat = 100
    private let discPreviewWidth: CGFloat = 110
    private let discPreviewHeight: CGFloat = 160
    
    var user: User
    
    private var discAmountInPreview: Int {
        user.allDiscs.count > 4 ? 4 : user.allDiscs.count
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            HStack {
                Text("Your discs")
                Spacer()
            }
            .padding(.horizontal, 12)
            ScrollView([.horizontal]){
                HStack {
                    ForEach(0..<discAmountInPreview) { disc in
                        DiscSmallListItemView(disc: user.allDiscs[disc], imageWidth: discImageSize)
                            .frame(width: discPreviewWidth, height: discPreviewHeight)
                            .border(Color.black)
                    }
                    NavigationLink {
                        BagScreen(user: user, discsSelection: .all)
                    } label: {
                        Text("Show all")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: discPreviewHeight + 16)
                .navigationTitle(user.username)
            }
        }
    }
}

#Preview {
    AllDiscsPreviewScene(user: .mock1)
}
