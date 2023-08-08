//
//  Item.swift
//  TodoApp
//
//  Created by Adam Chomicki on 08/08/2023.
//

import Foundation
import SwiftData

@Model
final class Todo {    // we must use classes here
    var creationDate: Date
    
    init(timestamp: Date) {
        self.creationDate = timestamp
    }
}
