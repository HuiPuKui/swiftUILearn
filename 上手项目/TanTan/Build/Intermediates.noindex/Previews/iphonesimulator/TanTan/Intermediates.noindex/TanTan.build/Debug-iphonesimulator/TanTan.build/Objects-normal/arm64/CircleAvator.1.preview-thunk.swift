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
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/CircleAvator.swift", line: 13)
        Image(photo)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: __designTimeInteger("#108640.[1].[1].property.[0].[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#108640.[1].[1].property.[0].[0].modifier[2].arg[1].value", fallback: 100))
            .cornerRadius(__designTimeInteger("#108640.[1].[1].property.[0].[0].modifier[3].arg[0].value", fallback: 50))
            .overlay(
                Circle().stroke(.white, lineWidth: __designTimeInteger("#108640.[1].[1].property.[0].[0].modifier[4].arg[0].value.modifier[0].arg[1].value", fallback: 5))
            )
            .shadow(radius: __designTimeInteger("#108640.[1].[1].property.[0].[0].modifier[5].arg[0].value", fallback: 1))
            .padding(.bottom, __designTimeInteger("#108640.[1].[1].property.[0].[0].modifier[6].arg[1].value", fallback: 30))
    
#sourceLocation()
    }
}

import struct TanTan.CircleAvator
#Preview {
    CircleAvator(photo: "User1")
}



