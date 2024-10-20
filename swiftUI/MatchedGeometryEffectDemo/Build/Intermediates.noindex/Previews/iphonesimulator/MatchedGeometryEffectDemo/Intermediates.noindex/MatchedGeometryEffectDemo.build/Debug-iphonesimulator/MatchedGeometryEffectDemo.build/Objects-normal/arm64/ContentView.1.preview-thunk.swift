@_private(sourceFile: "ContentView.swift") import MatchedGeometryEffectDemo
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/MatchedGeometryEffectDemo/MatchedGeometryEffectDemo/ContentView.swift", line: 14)
        VStack {
            if !isClicked {
                RoundedRectangle(cornerRadius: __designTimeFloat("#67411.[1].[2].property.[0].[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: 25.0))
                    .matchedGeometryEffect(id: __designTimeString("#67411.[1].[2].property.[0].[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value", fallback: "roundedRectangle"), in: namespace)
                    .frame(width: __designTimeInteger("#67411.[1].[2].property.[0].[0].arg[0].value.[0].[0].[0].modifier[1].arg[0].value", fallback: 100), height: __designTimeInteger("#67411.[1].[2].property.[0].[0].arg[0].value.[0].[0].[0].modifier[1].arg[1].value", fallback: 100))
            }
            Spacer()
            if isClicked {
                RoundedRectangle(cornerRadius: __designTimeFloat("#67411.[1].[2].property.[0].[0].arg[0].value.[2].[0].[0].arg[0].value", fallback: 25.0))
                    .matchedGeometryEffect(id: __designTimeString("#67411.[1].[2].property.[0].[0].arg[0].value.[2].[0].[0].modifier[0].arg[0].value", fallback: "roundedRectangle"), in: namespace)
                    .frame(width: __designTimeInteger("#67411.[1].[2].property.[0].[0].arg[0].value.[2].[0].[0].modifier[1].arg[0].value", fallback: 300), height: __designTimeInteger("#67411.[1].[2].property.[0].[0].arg[0].value.[2].[0].[0].modifier[1].arg[1].value", fallback: 300))
            }
            
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
            
        }
        .padding()
    
#sourceLocation()
    }
}

import struct MatchedGeometryEffectDemo.ContentView
#Preview {
    ContentView()
}



