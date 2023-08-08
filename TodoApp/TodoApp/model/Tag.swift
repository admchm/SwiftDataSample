//
//  Tag.swift
//  TodoApp
//
//  Created by Adam Chomicki on 08/08/2023.
//

import Foundation
import SwiftData

@Model
final class Tag {
    var name: String
    
    // relationships
    var todos: [Todo]?
    var color: RGBColor
    
    init(name: String, color: RGBColor) {
        self.name = name
        self.color = color
    }
}
