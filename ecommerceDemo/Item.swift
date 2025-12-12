//
//  Item.swift
//  ecommerceDemo
//
//  Created by user275733 on 12/3/25.
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
