@_private(sourceFile: "StateDemo.swift") import FirstApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension StateDemo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/FirstApp/FirstApp/StateDemo.swift", line: 18)
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            VStack(spacing: pad) {
                Text("\(count)")
                Text(title)
                Button(__designTimeString("#29346.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value", fallback: "Button +"), action: {
                    count += __designTimeInteger("#29346.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[0].[0]", fallback: 1)
                    title = __designTimeString("#29346.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[1].[0]", fallback: "Hello World")
                    backgroundColor = .purple
                    pad = __designTimeInteger("#29346.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[3].[0]", fallback: 20)
                })
                
                Button(__designTimeString("#29346.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[3].arg[0].value", fallback: "Button -"), action: {
                    count -= __designTimeInteger("#29346.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[3].arg[1].value.[0].[0]", fallback: 1)
                    title = __designTimeString("#29346.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[3].arg[1].value.[1].[0]", fallback: "World Hello")
                    backgroundColor = .red
                    pad = __designTimeInteger("#29346.[1].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[3].arg[1].value.[3].[0]", fallback: 5)
                })
            }
        }
        
    
#sourceLocation()
    }
}

import struct FirstApp.StateDemo
#Preview {
    StateDemo()
}



