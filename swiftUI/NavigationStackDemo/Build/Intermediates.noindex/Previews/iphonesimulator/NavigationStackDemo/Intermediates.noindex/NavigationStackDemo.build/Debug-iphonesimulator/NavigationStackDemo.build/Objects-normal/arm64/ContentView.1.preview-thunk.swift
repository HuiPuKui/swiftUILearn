@_private(sourceFile: "ContentView.swift") import NavigationStackDemo
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
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/NavigationStackDemo/NavigationStackDemo/ContentView.swift", line: 47)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/NavigationStackDemo/NavigationStackDemo/ContentView.swift", line: 16)
        NavigationStack {
            List(bgColors, id: \.self) { bgColor in
                NavigationLink(value: bgColor) {
                    Text(bgColor.description)
                }
            }
            .listStyle(.plain)
            List(systemImages, id: \.self) { image in
                NavigationLink(value: image) {
                    Text(image.description)
                }
            }
            .listStyle(.plain)
            .navigationDestination(for: Color.self) { color in
                color.frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .navigationDestination(for: String.self) { image in
                Image(systemName: image)
                    .font(.system(size: __designTimeInteger("#58958.[1].[2].property.[0].[0].arg[0].value.[1].modifier[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 100)))
            }
            .navigationTitle(__designTimeString("#58958.[1].[2].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: "Color"))
        }
    
#sourceLocation()
    }
}

import struct NavigationStackDemo.ContentView
import struct NavigationStackDemo.ContentView_Previews

