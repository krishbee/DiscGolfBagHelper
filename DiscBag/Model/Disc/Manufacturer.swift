//
//  Manufacturer.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 28/05/2024.
//

import Foundation

enum Manufacturer: CaseIterable, Describable {
    
    case unknown, latitude, westside, discraft, mvp, axiom, innova, lonestar, thoughtspace, supersonic
    
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
        case .innova:
            "5"
        case .lonestar:
            "6"
        case .thoughtspace:
            "7"
        case .supersonic:
            "8"
        }
    }
    
    var description: String {
        switch self {
        case .unknown:
            ""
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
        case .innova:
            "Innova"
        case .lonestar:
            "Lone Star"
        case .thoughtspace:
            "Thought Space Atletics"
        case .supersonic:
            "Super Sonic"
        }
    }
}
