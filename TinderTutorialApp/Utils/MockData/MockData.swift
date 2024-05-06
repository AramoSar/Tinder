//
//  MockData.swift
//  TinderTutorialApp
//
//  Created by Aram on 19.03.24.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        .init(id: NSUUID().uuidString,
              fullname: "Megan Fox",
              age: 37,
              ProfileImageURLs: ["megan-Fox-1", "megan-Fox-2"]),
        .init(id: NSUUID().uuidString,
              fullname: "David Beckham",
              age: 37,
              ProfileImageURLs: ["david-backham-1", "david-backham-2"]),
        .init(id: NSUUID().uuidString,
              fullname: "Ariana Grande",
              age: 29,
              ProfileImageURLs: ["ariana-grande-1", "ariana-grande-2"]),
    ]
}
