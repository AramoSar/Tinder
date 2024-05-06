//
//  CardService.swift
//  TinderTutorialApp
//
//  Created by Aram on 19.03.24.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0) })
    }
}
