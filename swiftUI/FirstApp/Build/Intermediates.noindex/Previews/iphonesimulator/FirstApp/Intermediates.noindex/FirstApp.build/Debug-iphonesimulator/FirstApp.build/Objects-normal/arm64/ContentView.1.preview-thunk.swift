@_private(sourceFile: "ContentView.swift") import FirstApp
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
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/FirstApp/FirstApp/ContentView.swift", line: 12)
        VStack(alignment: .center) {
            Text(__designTimeString("#10007.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "Hello World One"))
            Text(__designTimeString("#10007.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: "Hello World"))
            Text(__designTimeString("#10007.[1].[0].property.[0].[0].arg[1].value.[2].arg[0].value", fallback: "Hello World Three"))
        }
        
        HStack(alignment:.top) {
            Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[0].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[0].modifier[0].arg[1].value", fallback: 60))
            Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[1].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[1].modifier[0].arg[1].value", fallback: 70))
            Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[2].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[2].modifier[0].arg[1].value", fallback: 80))
        }
        
        ZStack(alignment: .leading) {
            Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[0].modifier[0].arg[1].value", fallback: 80))
                .foregroundColor(.red)
            Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[1].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[1].modifier[0].arg[1].value", fallback: 70))
                .foregroundColor(.blue)
            Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[2].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[2].modifier[0].arg[1].value", fallback: 60))
                .foregroundColor(.green)
        }
    
#sourceLocation()
    }
}

import struct FirstApp.ContentView
#Preview {
    ContentView()
}



