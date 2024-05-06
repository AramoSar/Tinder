//
//  User.swift
//  TinderTutorialApp
//
//  Created by Aram on 19.03.24.
//

import Foundation

struct User: Identifiable, Hashable   {
    let id: String
    let fullname: String
    var age: Int
    var ProfileImageURLs: [String]
}
