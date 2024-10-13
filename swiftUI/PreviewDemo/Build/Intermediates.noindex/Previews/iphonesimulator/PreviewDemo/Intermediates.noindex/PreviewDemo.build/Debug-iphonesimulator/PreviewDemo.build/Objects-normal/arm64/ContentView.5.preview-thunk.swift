@_private(sourceFile: "ContentView.swift") import PreviewDemo
import func SwiftUI.__designTimeSelection
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/PreviewDemo/PreviewDemo/ContentView.swift", line: 28)
        __designTimeSelection(Group {
            __designTimeSelection(ContentView()
                .previewLayout(__designTimeSelection(PreviewLayout.sizeThatFits, "#58544.[2].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")) // 大小
                .padding()
                .previewDisplayName(__designTimeString("#58544.[2].[0].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: "Default preview 1")), "#58544.[2].[0].property.[0].[0].arg[0].value.[0]") // 名字
            
            // 暗黑模式
            __designTimeSelection(ContentView()
                .previewLayout(__designTimeSelection(PreviewLayout.sizeThatFits, "#58544.[2].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value"))
                .padding()
                .background(__designTimeSelection(Color(.systemBackground), "#58544.[2].[0].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value"))
                .environment(\.colorScheme, .dark)
                .previewDisplayName(__designTimeString("#58544.[2].[0].property.[0].[0].arg[0].value.[1].modifier[4].arg[0].value", fallback: "Dark Mode")), "#58544.[2].[0].property.[0].[0].arg[0].value.[1]")
            
            // 亮模式
            __designTimeSelection(ContentView()
                .previewLayout(__designTimeSelection(PreviewLayout.sizeThatFits, "#58544.[2].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value"))
                .padding()
                .background(__designTimeSelection(Color(.systemBackground), "#58544.[2].[0].property.[0].[0].arg[0].value.[2].modifier[2].arg[0].value"))
                .environment(\.colorScheme, .light)
                .previewDisplayName(__designTimeString("#58544.[2].[0].property.[0].[0].arg[0].value.[2].modifier[4].arg[0].value", fallback: "Light Mode")), "#58544.[2].[0].property.[0].[0].arg[0].value.[2]")
        }, "#58544.[2].[0].property.[0].[0]")
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/PreviewDemo/PreviewDemo/ContentView.swift", line: 12)
        __designTimeSelection(VStack {
            __designTimeSelection(Image(systemName: __designTimeString("#58544.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "globe"))
                .imageScale(.large)
                .foregroundStyle(.tint), "#58544.[1].[0].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Text(__designTimeString("#58544.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Hello")), "#58544.[1].[0].property.[0].[0].arg[0].value.[1]")
        }
        .padding(), "#58544.[1].[0].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct PreviewDemo.ContentView
import struct PreviewDemo.ContentView_Previews

