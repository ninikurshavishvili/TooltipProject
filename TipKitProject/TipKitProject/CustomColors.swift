//
//  CustomColors.swift
//  TipKitProject
//
//  Created by Nino Kurshavishvili on 02.03.25.
//

import SwiftUI
import TipKit


struct CustomColors {
    static let buttonBlue = Color(hex: 0x02B2FE)
    static let homePageDark = Color(hex: 0x25292C)
    static let menuBarBackground = Color(hex: 0x313236)
    static let color1 = Color(hex: 0xbcd4fb) // Light Blue
    static let color2 = Color(hex: 0x7b93f3) // Medium Blue
    static let color4 = Color(hex: 0x9188d5) // Purple
    static let color5 = Color(hex: 0xb69dc6) // Soft Purple

    static let allColors: [Color] = [color1, color2, color4, color5]
}

// MARK: - Color Extension for Gradients

extension Color {
    init(hex: Int) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }

    var gradient: LinearGradient {
        LinearGradient(gradient: Gradient(colors: [self, self.opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
