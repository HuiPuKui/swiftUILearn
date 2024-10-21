//
//  User.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import Foundation

struct User {
    var name: String
    var photo: String
}

extension User {
    static let Me = User(name: "UserSent", photo: "User1")
    static let Others = User(name: "UserReceived", photo: "User2")
}
