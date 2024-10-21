//
//  ChatView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatManager: ChatManager
    @State var typingMessage: String = ""
    var user: User
    init(user: User) {
        self.user = user
        chatManager = ChatManager(user: user)
    }
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Spacer(minLength: 80)
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack {
                        ForEach(chatManager.messages.indices, id: \.self) { index in
                            let message = chatManager.messages[index] as! Message
                            MessageView(message: message)
                                .animation(.easeIn)
                                .transition(.move(edge: .trailing))
                        }
                    }
                }
                
                ZStack(alignment: .trailing) {
                    Color.gray.opacity(0.1)
                    TextField("Type a message", text: $typingMessage)
                        .foregroundColor(.gray)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button {
                        sendMessage()
                    } label: {
                        Text("Send")
                    }
                    .padding(.horizontal)
                    .foregroundColor(typingMessage.isEmpty ? .gray : Color.accentColor)
                }
                .frame(height: 45)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom)
            }
            
            ChatViewHeader(name: user.name, photo: user.photo) {
                
            }
        }
    }
    
    func sendMessage() {
        chatManager.sendMessage(Message(content: typingMessage))
        typingMessage = ""
    }
}

#Preview {
    ChatView(user: User.Others)
}
