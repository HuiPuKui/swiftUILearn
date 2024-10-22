@_private(sourceFile: "ChatView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ChatView {
    @_dynamicReplacement(for: scrollToBottom()) private func __preview__scrollToBottom() {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/ChatView.swift", line: 93)
        withAnimation {
            scrollProxy?.scrollTo(chatManager.messages.last?.id, anchor: .bottom)
        }
    
#sourceLocation()
    }
}

extension ChatView {
    @_dynamicReplacement(for: sendMessage()) private func __preview__sendMessage() {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/ChatView.swift", line: 88)
        chatManager.sendMessage(Message(content: typingMessage))
        typingMessage = __designTimeString("#6450.[1].[7].[1].[0]", fallback: "")
    
#sourceLocation()
    }
}

extension ChatView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/ChatView.swift", line: 21)
        ZStack(alignment: .top) {
            VStack {
                Spacer(minLength: __designTimeInteger("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: 80))
                ScrollView(.vertical, showsIndicators: __designTimeBoolean("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value", fallback: false)) {
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
                    Color.gray.opacity(__designTimeFloat("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: 0.1))
                    TextField(__designTimeString("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.[1].arg[0].value", fallback: "Type a message"), text: $typingMessage)
                        .foregroundColor(.gray)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button {
                        sendMessage()
                    } label: {
                        Text(__designTimeString("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "Send"))
                    }
                    .padding(.horizontal)
                    .foregroundColor(typingMessage.isEmpty ? .gray : Color.accentColor)
                }
                .frame(height: __designTimeInteger("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 45))
                .cornerRadius(__designTimeInteger("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[1].arg[0].value", fallback: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: __designTimeInteger("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[2].arg[0].value.arg[0].value", fallback: 20))
                        .stroke(.gray.opacity(__designTimeFloat("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[2].arg[0].value.modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)), lineWidth: __designTimeInteger("#6450.[1].[6].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[2].arg[0].value.modifier[0].arg[1].value", fallback: 1))
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
            appState.isTabBarHidden = __designTimeBoolean("#6450.[1].[6].property.[0].[0].modifier[2].arg[0].value.[0].[0]", fallback: true)
        }
        .onDisappear {
            appState.isTabBarHidden = __designTimeBoolean("#6450.[1].[6].property.[0].[0].modifier[3].arg[0].value.[0].[0]", fallback: false)
        }
        .navigationTitle(__designTimeString("#6450.[1].[6].property.[0].[0].modifier[4].arg[0].value", fallback: ""))
        .navigationBarHidden(__designTimeBoolean("#6450.[1].[6].property.[0].[0].modifier[5].arg[0].value", fallback: true))
    
#sourceLocation()
    }
}

import struct TanTan.ChatView
#Preview {
    ChatView(user: User.Others)
        .environmentObject(AppState())
}



