//
//  ChatView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatManager: ChatManager
    var user: User
    init(user: User) {
        self.user = user
        chatManager = ChatManager(user: user)
    }
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(chatManager.messages.indices, id: \.self) { index in
                    let message = chatManager.messages[index] as! Message
                    MessageView(message: message)
                }
            }
        }
    }
}

#Preview {
    ChatView(user: User.Others)
}
