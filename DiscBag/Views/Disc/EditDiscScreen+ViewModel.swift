//
//  EditDiscScreen+ViewModel.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 30/05/2024.
//

import Foundation

extension EditDiscScreen {
    @MainActor
    class ViewModel: ObservableObject {
        private var id: String
        @Published var newName: String = ""
        @Published var newManifacturer: Manufacturer = .unknown
        @Published var newDisctype: DiscType = .unknown
        @Published var newInBag: Bool = false
        
        @Published var newSpeed: Double = 0
        @Published var newGlide: Double = 0
        @Published var newTurn: Double = 0
        @Published var newFade: Double = 0
        
        init(disc: Disc) {
            self.id = disc.id
            self.newName = disc.name
            self.newManifacturer = disc.manufacturer
            self.newDisctype = disc.discType
            self.newInBag = disc.inBag
            self.newSpeed = disc.flightNumbers?.speed ?? 0
            self.newGlide = disc.flightNumbers?.glide ?? 0
            self.newTurn = disc.flightNumbers?.turn ?? 0
            self.newFade = disc.flightNumbers?.fade ?? 0
        }
        
        func save() -> Disc {
            .init(
                id: id,
                name: newName,
                discType: newDisctype,
                manufacturer: newManifacturer,
                flightNumbers: createFlightNumbers(),
                inBag: newInBag
            )
        }
        
        func createFlightNumbers() -> FlightNumbers? {
            .init(speed: newSpeed, glide: newGlide, turn: newTurn, fade: newFade)
        }
        
    }
}
