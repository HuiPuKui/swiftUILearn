@_private(sourceFile: "ChatViewHeader.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ChatViewHeader_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/ChatViewHeader.swift", line: 57)
        let user = User.Others
        ChatViewHeader(name: user.name, photo: user.photo) {
            
        }
    
#sourceLocation()
    }
}

extension ChatViewHeader {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/Component/ChatViewHeader.swift", line: 16)
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.top)
                .shadow(radius: __designTimeInteger("#104741.[1].[4].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 3))
            
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: __designTimeString("#104741.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "chevron.left"))
                        .foregroundColor(.gray)
                        .font(.system(size: __designTimeInteger("#104741.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 28), weight: .semibold))
                }
                
                Spacer()
                
                VStack(spacing: __designTimeInteger("#104741.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value", fallback: 5)) {
                    CircleAvator(photo: photo, size: __designTimeInteger("#104741.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[1].value", fallback: 50))
                    Text(name)
                        .foregroundColor(.gray)
                        .font(.system(size: __designTimeInteger("#104741.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 14)))
                }
                
                Spacer()
                
                Button {
                    videoAction()
                } label: {
                    Image(systemName: __designTimeString("#104741.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "video.fill"))
                        .font(.system(size: __designTimeInteger("#104741.[1].[4].property.[0].[0].arg[0].value.[1].arg[0].value.[4].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25), weight: .bold))
                }
            }
            .padding(.horizontal, __designTimeInteger("#104741.[1].[4].property.[0].[0].arg[0].value.[1].modifier[0].arg[1].value", fallback: 20))
            .padding(.vertical, __designTimeInteger("#104741.[1].[4].property.[0].[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 10))
        }
        .frame(height: __designTimeInteger("#104741.[1].[4].property.[0].[0].modifier[0].arg[0].value", fallback: 50))
    
#sourceLocation()
    }
}

import struct TanTan.ChatViewHeader
import struct TanTan.ChatViewHeader_Previews

