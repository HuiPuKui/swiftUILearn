@_private(sourceFile: "ContentView.swift") import FirstApp
import func SwiftUI.__designTimeSelection
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
        __designTimeSelection(VStack(alignment: .center) {
            __designTimeSelection(Text(__designTimeString("#10007.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "Hello World One")), "#10007.[1].[0].property.[0].[0].arg[1].value.[0]")
            __designTimeSelection(Text(__designTimeString("#10007.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: "Hello World")), "#10007.[1].[0].property.[0].[0].arg[1].value.[1]")
            __designTimeSelection(Text(__designTimeString("#10007.[1].[0].property.[0].[0].arg[1].value.[2].arg[0].value", fallback: "Hello World Three")), "#10007.[1].[0].property.[0].[0].arg[1].value.[2]")
        }, "#10007.[1].[0].property.[0].[0]")
        
        __designTimeSelection(HStack(alignment:.top) {
            __designTimeSelection(Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[0].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[0].modifier[0].arg[1].value", fallback: 60)), "#10007.[1].[0].property.[0].[1].arg[1].value.[0]")
            __designTimeSelection(Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[1].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[1].modifier[0].arg[1].value", fallback: 70)), "#10007.[1].[0].property.[0].[1].arg[1].value.[1]")
            __designTimeSelection(Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[2].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[1].arg[1].value.[2].modifier[0].arg[1].value", fallback: 80)), "#10007.[1].[0].property.[0].[1].arg[1].value.[2]")
        }, "#10007.[1].[0].property.[0].[1]")
        
        __designTimeSelection(ZStack(alignment: .leading) {
            __designTimeSelection(Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[0].modifier[0].arg[1].value", fallback: 80))
                .foregroundColor(.red), "#10007.[1].[0].property.[0].[2].arg[1].value.[0]")
            __designTimeSelection(Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[1].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[1].modifier[0].arg[1].value", fallback: 70))
                .foregroundColor(.blue), "#10007.[1].[0].property.[0].[2].arg[1].value.[1]")
            __designTimeSelection(Rectangle().frame(width: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[2].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#10007.[1].[0].property.[0].[2].arg[1].value.[2].modifier[0].arg[1].value", fallback: 60))
                .foregroundColor(.green), "#10007.[1].[0].property.[0].[2].arg[1].value.[2]")
        }, "#10007.[1].[0].property.[0].[2]")
    
#sourceLocation()
    }
}

import struct FirstApp.ContentView
#Preview {
    ContentView()
}



