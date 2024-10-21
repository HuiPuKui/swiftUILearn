//
//  Message.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import Foundation

struct Message: Identifiable {
    var id: UUID
    var content: String
    var user: User?
    var isCurrentUser: Bool {
        user == nil
    }
    
    init(id: UUID = UUID(), content: String, user: User? = nil) {
        self.id = id
        self.content = content
        self.user = user
    }
}

extension Message {
    static let messageSent = Message(content: "Hi! How are you!", user: nil)
    static let messageReceived = Message(content: "I am fine. Thank you!", user: User.Others)
}
