//
//  DiscListItemView.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

import SwiftUI

struct DiscSmallListItemView: View {
    let disc: Disc
    let imageWidth: CGFloat
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://i.ebayimg.com/images/g/1T8AAOSwBrRd7tdX/s-l1600.webp")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageWidth, height: imageWidth)
            } placeholder: {
                ProgressView()
            }
            
            HStack {
                Text(disc.name)
                    .font(.headline)
                    .fontWidth(.compressed)
                    .textCase(.uppercase)
                Spacer()
            }
            HStack {
                Text(disc.manufacturer.description)
                    .font(.subheadline)
                    .fontWidth(.compressed)
                    .foregroundStyle(disc.manufacturer != .unknown ? .black : .white)
                Spacer()
            }
        }
        .padding(.horizontal, 6)
        .padding(.bottom, 12)
    }
}

#Preview {
    DiscSmallListItemView(
        disc: .init(
            id: "1",
            name: "noget",
            discType: .unknown,
            manufacturer: .unknown, 
            inBag: true
        ), imageWidth: 100
    )
}
