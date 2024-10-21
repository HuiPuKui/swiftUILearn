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
    @_dynamicReplacement(for: sendMessage()) private func __preview__sendMessage() {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/ChatView.swift", line: 65)
        chatManager.sendMessage(Message(content: typingMessage))
        typingMessage = __designTimeString("#101691.[1].[5].[1].[0]", fallback: "")
    
#sourceLocation()
    }
}

extension ChatView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/ChatView.swift", line: 19)
        ZStack(alignment: .top) {
            VStack {
                Spacer(minLength: __designTimeInteger("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: 80))
                ScrollView(.vertical, showsIndicators: __designTimeBoolean("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value", fallback: false)) {
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
                    Color.gray.opacity(__designTimeFloat("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: 0.1))
                    TextField(__designTimeString("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.[1].arg[0].value", fallback: "Type a message"), text: $typingMessage)
                        .foregroundColor(.gray)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button {
                        sendMessage()
                    } label: {
                        Text(__designTimeString("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "Send"))
                    }
                    .padding(.horizontal)
                    .foregroundColor(typingMessage.isEmpty ? .gray : Color.accentColor)
                }
                .frame(height: __designTimeInteger("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 45))
                .cornerRadius(__designTimeInteger("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[1].arg[0].value", fallback: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: __designTimeInteger("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[2].arg[0].value.arg[0].value", fallback: 20))
                        .stroke(.gray.opacity(__designTimeFloat("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[2].arg[0].value.modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)), lineWidth: __designTimeInteger("#101691.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[2].arg[0].value.modifier[0].arg[1].value", fallback: 1))
                )
                .padding(.horizontal)
                .padding(.bottom)
            }
            
            ChatViewHeader(name: user.name, photo: user.photo) {
                
            }
        }
    
#sourceLocation()
    }
}

import struct TanTan.ChatView
#Preview {
    ChatView(user: User.Others)
}



