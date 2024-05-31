//
//  DiscType.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 28/05/2024.
//

import Foundation

enum DiscType {
    case pa, md, fd, dd, unknown
    
    var description: String {
        switch self {
        case .pa:
            "Put and Approach"
        case .md:
            "Midrange"
        case .fd:
            "Fairway Driver"
        case .dd:
            "Distance Driver"
        case .unknown:
            "Unknown"
        }
    }
}
