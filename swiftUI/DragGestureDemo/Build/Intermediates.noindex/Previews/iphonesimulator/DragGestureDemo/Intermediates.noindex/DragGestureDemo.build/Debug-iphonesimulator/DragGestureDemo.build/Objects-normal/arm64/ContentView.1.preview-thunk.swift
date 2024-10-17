@_private(sourceFile: "ContentView.swift") import DragGestureDemo
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: getRotateAmount()) private func __preview__getRotateAmount() -> Double {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/DragGestureDemo/DragGestureDemo/ContentView.swift", line: 44)
        let max = UIScreen.main.bounds.width / __designTimeInteger("#15515.[1].[3].[0].value.[0]", fallback: 2)
        let currentAmount = offset.width
        let percentage = currentAmount / max
        return Double(percentage * __designTimeInteger("#15515.[1].[3].[3].arg[0].value.[0]", fallback: 10))
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: getScaleAmount()) private func __preview__getScaleAmount() -> CGFloat {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/DragGestureDemo/DragGestureDemo/ContentView.swift", line: 37)
        let max = UIScreen.main.bounds.width / __designTimeInteger("#15515.[1].[2].[0].value.[0]", fallback: 2)
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        return __designTimeFloat("#15515.[1].[2].[3].[0]", fallback: 1.0) - min(percentage, __designTimeFloat("#15515.[1].[2].[3].[1]", fallback: 0.7)) * __designTimeFloat("#15515.[1].[2].[3].[2]", fallback: 0.3)
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/DragGestureDemo/DragGestureDemo/ContentView.swift", line: 15)
        RoundedRectangle(cornerRadius: __designTimeInteger("#15515.[1].[1].property.[0].[0].arg[0].value", fallback: 20))
            .frame(width: __designTimeInteger("#15515.[1].[1].property.[0].[0].modifier[0].arg[0].value", fallback: 300), height: __designTimeInteger("#15515.[1].[1].property.[0].[0].modifier[0].arg[1].value", fallback: 500))
            .offset(offset)
            .scaleEffect(getScaleAmount())
            .rotationEffect(Angle(degrees: getRotateAmount()))
            .gesture(
                DragGesture()
                    .onChanged { value in
                        withAnimation(.spring()) {
                            offset = value.translation
                        }
                        
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            offset = .zero
                        }
                    }
            )
    
#sourceLocation()
    }
}

import struct DragGestureDemo.ContentView
#Preview {
    ContentView()
}



