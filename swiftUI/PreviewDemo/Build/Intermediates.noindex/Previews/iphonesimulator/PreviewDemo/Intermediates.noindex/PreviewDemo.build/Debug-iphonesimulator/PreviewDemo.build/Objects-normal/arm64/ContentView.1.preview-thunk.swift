@_private(sourceFile: "ContentView.swift") import PreviewDemo
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
        Group {
            ContentView()
                .previewLayout(PreviewLayout.sizeThatFits) // 大小
                .padding()
                .previewDisplayName(__designTimeString("#58544.[2].[0].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: "Default preview 1")) // 名字
            
            // 暗黑模式
            ContentView()
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
                .previewDisplayName(__designTimeString("#58544.[2].[0].property.[0].[0].arg[0].value.[1].modifier[4].arg[0].value", fallback: "Dark Mode"))
            
            // 亮模式
            ContentView()
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .light)
                .previewDisplayName(__designTimeString("#58544.[2].[0].property.[0].[0].arg[0].value.[2].modifier[4].arg[0].value", fallback: "Light Mode"))
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/PreviewDemo/PreviewDemo/ContentView.swift", line: 12)
        VStack {
            Image(systemName: __designTimeString("#58544.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "globe"))
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(__designTimeString("#58544.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Hello"))
        }
        .padding()
    
#sourceLocation()
    }
}

import struct PreviewDemo.ContentView
import struct PreviewDemo.ContentView_Previews

