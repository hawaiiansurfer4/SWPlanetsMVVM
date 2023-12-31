//
//  Item.swift
//  SWPlanetsMVVM
//
//  Created by Sean Murphy on 8/11/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
