//
//  SWPlanetsMVVMApp.swift
//  SWPlanetsMVVM
//
//  Created by Sean Murphy on 8/11/23.
//

import SwiftUI
import SwiftData

@main
struct SWPlanetsMVVMApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
