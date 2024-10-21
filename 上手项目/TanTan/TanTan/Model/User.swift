//
//  User.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import Foundation

struct User: Hashable {
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.name == rhs.name && lhs.photo == rhs.photo
    }
    
    var name: String
    var photo: String
}

extension User {
    static let Me = User(name: "UserSent", photo: "User1")
    static let Others = User(name: "UserReceived", photo: "User2")
    static let Others2 = User(name: "UserReceived", photo: "User3")
}
