//
//  Manufacturer.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 28/05/2024.
//

import Foundation

enum Manufacturer: CaseIterable, Describable {
    
    case latitude, westside, discraft, mvp, axiom, unknown
    
    var id: String {
        switch self {
        case .unknown:
            "Unknown"
        case .latitude:
            "0"
        case .westside:
            "1"
        case .discraft:
            "2"
        case .mvp:
            "3"
        case .axiom:
            "4"
        }
    }
    
    var description: String {
        switch self {
        case .unknown:
            "Unknown"
        case .latitude:
            "Latitude 64"
        case .westside:
            "Westside Discs"
        case .discraft:
            "Discraft"
        case .mvp:
            "MVP"
        case .axiom:
            "Axiom Discs"
        }
    }
}
