@_private(sourceFile: "MessageListRowView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension MessageListRowView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/MessageListRowView.swift", line: 15)
        HStack(spacing: __designTimeInteger("#146891.[1].[1].property.[0].[0].arg[0].value", fallback: 15)) {
            CircleAvator(photo: messagePreview.user.photo, size: __designTimeInteger("#146891.[1].[1].property.[0].[0].arg[1].value.[0].arg[1].value", fallback: 80))
            VStack(alignment: .leading, spacing: __designTimeInteger("#146891.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value", fallback: 5)) {
                Text(messagePreview.user.name)
                    .font(.system(size: __designTimeInteger("#146891.[1].[1].property.[0].[0].arg[1].value.[1].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20), weight: .semibold))
                Text(messagePreview.lastMessage)
                    .foregroundColor(.gray)
                    .lineLimit(__designTimeInteger("#146891.[1].[1].property.[0].[0].arg[1].value.[1].arg[2].value.[1].modifier[1].arg[0].value", fallback: 1))
            }
            
            Spacer()
        }
    
#sourceLocation()
    }
}

import struct TanTan.MessageListRowView
#Preview {
    VStack {
        MessageListRowView(messagePreview: MessagePreview.examples[0])
        MessageListRowView(messagePreview: MessagePreview.examples[1])
    }
}



