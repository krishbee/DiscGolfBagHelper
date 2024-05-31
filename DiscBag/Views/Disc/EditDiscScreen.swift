//
//  EditDiscScreen.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 30/05/2024.
//

import SwiftUI

struct EditDiscScreen: View {
    @StateObject private var viewModel: ViewModel
    @Binding var editDiscOverlayOpen: Bool
    @Binding var disc: Disc
    init(disc: Binding<Disc>, editDiscOverlayOpen: Binding<Bool>) {
        self._editDiscOverlayOpen = editDiscOverlayOpen
        self._disc = disc
        _viewModel = StateObject(
            wrappedValue: ViewModel(
                disc: .init(
                    id: disc.wrappedValue.id,
                    name: disc.wrappedValue.name,
                    discType: disc.wrappedValue.discType,
                    manufacturer: disc.wrappedValue.manufacturer ,
                    flightNumbers: disc.wrappedValue.flightNumbers,
                    inBag: disc.wrappedValue.inBag
                )
            )
        )
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Text("Edit disc")
                    .fontWidth(.compressed)
                    .font(.init(.custom(.init(), size: 24)))
                    .padding(.top, 24)
                
                Spacer()
                
                TextFieldAndLabel(
                    input: $viewModel.newName,
                    labelText: "Name",
                    isSecure: false,
                    textfieldPlaceholderText: "\(viewModel.newName)"
                )
                
                DropDownPickerAndLabel(
                    selectedItem: $viewModel.newManifacturer,
                    list: Manufacturer.self,
                    labelText: "Manufacturer"
                )
                .onChange(of: viewModel.newManifacturer) {
                    print(viewModel.newManifacturer.description)
                }
                
                NumberFieldAndLabel(
                    input: "",
                    doubleValue: $viewModel.newSpeed,
                    labelText: "Speed",
                    isSecure: false,
                    textfieldPlaceholderText: "\(viewModel.newSpeed)"
                )
                
                NumberFieldAndLabel(
                    input: "",
                    doubleValue: $viewModel.newGlide,
                    labelText: "Glide",
                    isSecure: false,
                    textfieldPlaceholderText: "\(viewModel.newGlide)"
                )
                
                NumberFieldAndLabel(
                    input: "",
                    doubleValue: $viewModel.newTurn,
                    labelText: "Turn",
                    isSecure: false,
                    textfieldPlaceholderText: "\(viewModel.newTurn)"
                )
                
                NumberFieldAndLabel(
                    input: "",
                    doubleValue: $viewModel.newFade,
                    labelText: "Fade",
                    isSecure: false,
                    textfieldPlaceholderText: "\(viewModel.newFade)"
                )
                
                Spacer()
                
                Button {
                    disc = viewModel.save()
                    editDiscOverlayOpen = false
                } label: {
                    Label(
                        title: { Text("Save") },
                        icon: { Image(systemName: "checkmark") }
                    )
                }.toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            editDiscOverlayOpen = false
                        } label: {
                            Label(
                                title: { Text("close") },
                                icon: { Image(systemName: "xmark") }
                            )
                        }
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 12)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    EditDiscScreen(
        disc: .constant(
            .init(
                id: "0",
                name: "Explorer",
                discType: .fd,
                manufacturer: .latitude,
                flightNumbers: .init(
                    speed: 7,
                    glide: 5,
                    turn: 0,
                    fade: 2
                ),
                inBag: true
            )
        ),
        editDiscOverlayOpen: .constant(
            true
        )
    )
}
