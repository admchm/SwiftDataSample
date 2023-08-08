//
//  Item.swift
//  TodoApp
//
//  Created by Adam Chomicki on 08/08/2023.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class Todo {    // we must use classes here
    // TODO: - check other attributes that we could use like:
    // @Attribute(originalName: "creationDate_") - renaming
    @Attribute(.unique)
    var creationDate: Date
    var name: String
    var isDone: Bool
    var priority: Int
    
    @Attribute(.externalStorage)
    var image: Data?
    
    // creating relationship between Todo and Tag classes
    var tags: [Tag]?
    
    init(name: String, isDone: Bool = false, priority: Int = 0) {
        self.creationDate = Date()
        self.name = name
        self.isDone = isDone
        self.priority = priority
    }
}




