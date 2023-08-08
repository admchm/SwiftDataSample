//
//  RGBColor.swift
//  TodoApp
//
//  Created by Adam Chomicki on 08/08/2023.
//

import Foundation
import SwiftUI

// When the property is stored, Codable is used for generating data blob
// and then store this data blob in the database
struct RGBColor: Codable {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    init(red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
    
    init(_ color: Color) {
        let uiColor = UIColor(color)
        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        self.red = Double(red)
        self.green = Double(green)
        self.blue = Double(blue)
        self.alpha = Double(alpha)
    }
    
    func toSwiftColor() -> Color {
        return Color(red: red, green: green, blue: blue, opacity: alpha)
    }
}
