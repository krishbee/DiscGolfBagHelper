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
    
    /// gør det muligt at have flere forskellige ting med i grid, defineret med EnumCase
//    private var items: [ListGridCell<EnumCase>] {
//        var items = discs
//        if let index = discs.firstIndex(where: { $0.id == selectedDisc.id }) {
//            items[index] = selectedDisc
//        }
//        return items.map {
//            return ListGridCell(id: $0.id, value: $0)
//        }
//    }
    
    private var items: [Disc] {
        var items = discs
        if let index = discs.firstIndex(where: { $0.id == selectedDisc.id }) {
            items[index] = selectedDisc
        }
        items = items.sorted {
            ($0.flightNumbers?.speed ?? 0.0) < ($1.flightNumbers?.speed ?? 0.0)
        }
        
        return items
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
                            self.selectedDisc = cell
                            editDiscOverlayOpen = true
                        } label: {
                            DiscListItemView(
                                disc: cell,
                                imageWidth: (geometry.size.width - (spacing * 4)) / 2
                            )
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $editDiscOverlayOpen){
            print(selectedDisc)
            print(editDiscOverlayOpen)
        } content: {
            EditDiscScreen(disc: $selectedDisc, editDiscOverlayOpen: $editDiscOverlayOpen)
        }
    }
}

#Preview {
    ListGridScene(discs: User.mock1.allDiscs, selectedDisc: .init(id: "", name: "", inBag: false))
}
