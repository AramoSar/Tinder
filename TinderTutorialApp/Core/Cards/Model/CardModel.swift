//
//  VardModel.swift
//  TinderTutorialApp
//
//  Created by Aram on 19.03.24.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String {return user.id }
}
