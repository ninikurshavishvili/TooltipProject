//
//  ImageCellTip.swift
//  TipKitProject
//
//  Created by Nino Kurshavishvili on 01.03.25.
//

import Foundation
import TipKit

struct ImageCellTip: Tip {
    var title: Text {
        Text("Add a New App Icon")
    }

    var message: Text? {
        Text("Tap the button to add a new random app icon with a color background.")
    }

    var image: Image? {
        Image(systemName: "plus.circle")
    }
    
    var id: String {
        "addAppIconTip"
    }
}

