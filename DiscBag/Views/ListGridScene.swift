//
//  ListGridScene.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

import SwiftUI

struct ListGridScene: View {
    @State private var editDiscOverlayOpen: Bool = false
    private let spacing: CGFloat = 25
    private let columns = 2
    var discs: [Disc]
    @State var selectedDisc: Disc = .init(id: "", name: "", inBag: false)
    
    private var items: [ListGridCell<Disc>] {
        var items = discs
        if let index = discs.firstIndex(where: { $0.id == selectedDisc.id }) {
            items[index] = selectedDisc
        }
        return items.map {
            return ListGridCell(id: $0.id, value: $0)
        }
        
    }
    private var layout: [GridItem] {
        let column = GridItem(.flexible(), spacing: spacing, alignment: .topLeading)
        return Array(repeating: column, count: columns)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(items) { cell in
                        Button {
                            self.selectedDisc = cell.value
                            editDiscOverlayOpen = true
                        } label: {
                            DiscListItemView(
                                disc: cell.value,
                                imageWidth: (geometry.size.width - (spacing * 2)) / 2
                            )
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $editDiscOverlayOpen){
            print(selectedDisc)
        } content: {
            EditDiscScreen(disc: $selectedDisc, editDiscOverlayOpen: $editDiscOverlayOpen)
        }
    }
}

#Preview {
    ListGridScene(discs: User.mock1.allDiscs, selectedDisc: .init(id: "", name: "", inBag: false))
}
