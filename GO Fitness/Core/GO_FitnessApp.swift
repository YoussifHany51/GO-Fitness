//
//  GO_FitnessApp.swift
//  GO Fitness
//
//  Created by Youssif Hany on 29/03/2026.
//

import SwiftUI

@main
struct GO_FitnessApp: App {
    @StateObject private var appRoutes: Router<AppRoutes> = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appRoutes)
        }
    }
}
