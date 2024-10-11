@_private(sourceFile: "StringVarDemo.swift") import FirstApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension StringVarDemo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/FirstApp/FirstApp/StringVarDemo.swift", line: 19)
        VStack(spacing: __designTimeInteger("#40609.[1].[2].property.[0].[0].arg[0].value", fallback: 1)) {
            Text("\(count)")
            
            Button(__designTimeString("#40609.[1].[2].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: "Button +")) {
                count += __designTimeInteger("#40609.[1].[2].property.[0].[0].arg[1].value.[1].arg[1].value.[0].[0]", fallback: 1)
            }
            
            Button(__designTimeString("#40609.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value", fallback: "Button -")) {
                count -= __designTimeInteger("#40609.[1].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[0].[0]", fallback: 1)
            }
        }
    
#sourceLocation()
    }
}

import struct FirstApp.StringVarDemo
#Preview {
    StringVarDemo()
}



