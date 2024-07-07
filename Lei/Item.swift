//
//  Item.swift
//  Lei
//
//  Created by Xinxing Jiang on 2024/7/7.
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
