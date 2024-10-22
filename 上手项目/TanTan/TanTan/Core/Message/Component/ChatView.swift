//
//  ChatView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var appState: AppState
    @ObservedObject var chatManager: ChatManager
    @State var typingMessage: String = ""
    @State var scrollProxy: ScrollViewProxy? = nil
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
                    ScrollViewReader { proxy in
                        VStack {
                            ForEach(chatManager.messages, id: \.id) { message in
                                MessageView(message: message)
                                    .animation(.easeIn, value: chatManager.messages.count)
                                    .transition(.move(edge: .trailing))
                                    .id(message.id)
                            }
                        }
                        .onAppear {
                            scrollProxy = proxy
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
        .onChange(of: chatManager.keyboardIsShowing, perform: { newValue in
            if newValue {
                scrollToBottom()
            }
        })
        .onChange(of: chatManager.messages.count, perform: { newValue in 
            scrollToBottom()
        })
        .onAppear {
            appState.isTabBarHidden = true
        }
        .onDisappear {
            appState.isTabBarHidden = false
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
    func sendMessage() {
        chatManager.sendMessage(Message(content: typingMessage))
        typingMessage = ""
    }
    
    func scrollToBottom() {
        withAnimation {
            scrollProxy?.scrollTo(chatManager.messages.last?.id, anchor: .bottom)
        }
    }
}

#Preview {
    ChatView(user: User.Others)
        .environmentObject(AppState())
}
