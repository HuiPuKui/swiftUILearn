@_private(sourceFile: "CircleAvator.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CircleAvator {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/CircleAvator.swift", line: 14)
        Image(photo)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .cornerRadius(__designTimeInteger("#41070.[1].[2].property.[0].[0].modifier[3].arg[0].value", fallback: 50))
            .overlay(
                Circle().stroke(.white, lineWidth: __designTimeInteger("#41070.[1].[2].property.[0].[0].modifier[4].arg[0].value.modifier[0].arg[1].value", fallback: 5))
            )
            .shadow(radius: __designTimeInteger("#41070.[1].[2].property.[0].[0].modifier[5].arg[0].value", fallback: 1))
    
#sourceLocation()
    }
}

import struct TanTan.CircleAvator
#Preview {
    CircleAvator(photo: "User1", size: 100)
}



