@_private(sourceFile: "PickView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension PickView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/PickView.swift", line: 16)
        GeometryReader { proxy in
            if let photos = card.photos.first {
                ZStack(alignment: .bottomLeading) {
                    Image(photos)
                        .resizable()
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        .aspectRatio(contentMode: .fill)
                        .if(blur) {
                            $0.blur(radius: __designTimeInteger("#82626.[1].[2].property.[0].[0].arg[0].value.[0].[0].[0].arg[1].value.[0].modifier[3].arg[1].value.[0].arg[0].value", fallback: 25))
                        }
                    
                    Text("\(card.name)\n\(card.age)")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: __designTimeInteger("#82626.[1].[2].property.[0].[0].arg[0].value.[0].[0].[0].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value", fallback: 18), weight: .semibold))
                        .if(blur) {
                            $0.redacted(reason: .placeholder)
                        }
                }
                .cornerRadius(__designTimeInteger("#82626.[1].[2].property.[0].[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value", fallback: 16))
            }
        }
    
#sourceLocation()
    }
}

import struct TanTan.PickView
#Preview {
    PickView(card: UserCard(name: "Jame", age: 23, place: "New Youk", zodiac: "Cancer", photos: ["User1"]), blur: true)
        .frame(width: 200, height: 300)
}



