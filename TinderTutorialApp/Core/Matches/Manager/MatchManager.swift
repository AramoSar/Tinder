//
//  MatchManagerView.swift
//  TinderTutorialApp
//
//  Created by Aram on 22.03.24.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    @Published var matchedUser: User?
      
    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()
        
        if didMatch {
            matchedUser = user
        }
    }
    
}
