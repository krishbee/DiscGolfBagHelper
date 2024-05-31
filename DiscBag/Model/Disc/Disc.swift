//
//  Disc.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 28/05/2024.
//

import Foundation

struct Disc: Identifiable {
    let id: String
    
    var name: String
    var discType: DiscType
    var manufacturer: Manufacturer
    var flightNumbers: FlightNumbers?
    var inBag: Bool
    
    init(id: String, name: String, discType: DiscType = .unknown, manufacturer: Manufacturer = .unknown, flightNumbers: FlightNumbers? = nil, inBag: Bool) {
        self.id = id
        self.name = name
        self.discType = discType
        self.manufacturer = manufacturer
        self.flightNumbers = flightNumbers
        self.inBag = inBag
    }
}
