//
//  DiscListItemView.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

import SwiftUI

struct DiscListItemView: View {
    let disc: Disc
    let imageWidth: CGFloat
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://i.ebayimg.com/images/g/1T8AAOSwBrRd7tdX/s-l1600.webp")) { image in
                image
                    .resizable()
                    .scaledToFill()
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
                    .foregroundStyle(disc.manufacturer != .unknown ? .black : .white)
                    .font(.subheadline)
                    .fontWidth(.compressed)
                    .textCase(.uppercase)
                Spacer()
            }
        }
        .padding(.horizontal, 12)
        .padding(.bottom, 12)
    }
}

#Preview {
    DiscListItemView(
        disc: .init(
            id: "1",
            name: "noget",
            discType: .unknown,
            manufacturer: .unknown, 
            inBag: true
        ), imageWidth: 100
    )
}
