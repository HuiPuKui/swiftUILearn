@_private(sourceFile: "ContentView.swift") import CounterDemo
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
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/CounterDemo/CounterDemo/Views/ContentView.swift", line: 15)
        VStack(spacing: __designTimeInteger("#45646.[1].[1].property.[0].[0].arg[0].value", fallback: 10)) {
            Text("\(counter.count)")
            
            Button(__designTimeString("#45646.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: "Button +")) {
                counter.increaseByOne()
            }
            
            Button(__designTimeString("#45646.[1].[1].property.[0].[0].arg[1].value.[2].arg[0].value", fallback: "Button -")) {
                counter.decreaseByOne()
            }
        }
        .padding()
    
#sourceLocation()
    }
}

import struct CounterDemo.ContentView
#Preview {
    ContentView()
}



