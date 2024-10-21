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
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/ChatView.swift", line: 18)
        ScrollView(.vertical, showsIndicators: __designTimeBoolean("#101691.[1].[3].property.[0].[0].arg[1].value", fallback: false)) {
            LazyVStack {
                ForEach(chatManager.messages.indices, id: \.self) { index in
                    let message = chatManager.messages[index] as! Message
                    MessageView(message: message)
                }
            }
        }
    
#sourceLocation()
    }
}

import struct TanTan.ChatView
#Preview {
    ChatView(user: User.Others)
}



