//
//  mockData.swift
//  TipKitProject
//
//  Created by Nino Kurshavishvili on 02.03.25.
//

import SwiftUI

struct mockData {
    static let images = ["image 1", "image 1", "image 3", "image 4", "image 5", "image 7", "image 8", "image 9", "image 10", "image 11", "image 12", "image 13", "image 14", "image 15", "image 16", "image 17", "image 18", "image 19", "image 20", "image 21", "image 22", "image 23"]

    static let colorsWithImages: [ColorItem] = CustomColors.allColors.map { color in
        ColorItem(color: color, imageName: images.randomElement() ?? "image1")
    }
}
