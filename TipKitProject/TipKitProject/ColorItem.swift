//
//  ColorItem.swift
//  TipKitProject
//
//  Created by Nino Kurshavishvili on 02.03.25.
//

import SwiftUI

struct ColorItem: Identifiable, Hashable {
    let id = UUID()
    let color: Color
    let imageName: String
}
