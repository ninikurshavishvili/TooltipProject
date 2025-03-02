//
//  TipKitProjectApp.swift
//  TipKitProject
//
//  Created by Nino Kurshavishvili on 01.03.25.
//

import SwiftUI
import TipKit

@main
struct TipKitProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    try? Tips.configure([
//                        .displayFrequency(.immediate)
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
