//
//  ChatManager.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import Foundation

class ChatManager: ObservableObject {
    @Published var messages = []
    var user: User
    init(user: User) {
        self.user = user
        loadMessages()
    }
    
    // mock network request
    func loadMessages() {
        messages = [Message.messageSent, Message.messageReceived]
    }
}
