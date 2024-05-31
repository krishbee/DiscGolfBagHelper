//
//  Describable.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 30/05/2024.
//

import Foundation

public protocol Describable: Identifiable, Hashable {
    var description: String { get }
}
