@_private(sourceFile: "MessageView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension MessageView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/MessageView.swift", line: 35)
        let messageSend = Message.messageSent
        let messageReceived = Message.messageReceived
        VStack {
            MessageView(message: messageSend)
            MessageView(message: messageReceived)
        }
    
#sourceLocation()
    }
}

extension MessageView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/MessageView.swift", line: 13)
        HStack {
            if message.isCurrentUser {
                Spacer()
            }
            
            Text(message.content)
                .padding(__designTimeInteger("#97918.[1].[1].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 10))
                .foregroundColor(.white)
                .background(message.isCurrentUser ? Color.accentColor : .gray.opacity(__designTimeFloat("#97918.[1].[1].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.else.modifier[0].arg[0].value", fallback: 0.7)))
                
                .cornerRadius(__designTimeInteger("#97918.[1].[1].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: 10))
            
            if !message.isCurrentUser {
                Spacer()
            }
        }
        .padding()
    
#sourceLocation()
    }
}

import struct TanTan.MessageView
import struct TanTan.MessageView_Previews

