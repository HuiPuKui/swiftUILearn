//
//  MessagePreview.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/22.
//

import Foundation

struct MessagePreview {
    var user: User
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(user: User.Others, lastMessage: "Thank you!")
    static let examples = [
        MessagePreview(user: User.Others, lastMessage: "From first User"),
        MessagePreview(user: User.Others2, lastMessage: "From Second User")
    ]
}
