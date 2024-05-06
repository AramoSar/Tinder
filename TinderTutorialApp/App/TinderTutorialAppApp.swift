//
//  TinderTutorialAppApp.swift
//  TinderTutorialApp
//
//  Created by Aram on 18.03.24.
//

import SwiftUI

@main
struct TinderTutorialAppApp: App {
    @StateObject var matchManager = MatchManager()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
