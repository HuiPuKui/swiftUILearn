@_private(sourceFile: "ContentView.swift") import TabViewDemo
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
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TabViewDemo/TabViewDemo/ContentView.swift", line: 15)
        TabView(selection: $selectedIndex) {
            Group {
                HomeTab()
                    .tag(__designTimeInteger("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 0))
                
                Text(__designTimeString("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Explore"))
                    .tabItem {
                        Image(systemName: __designTimeString("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "globe"))
                        Text(__designTimeString("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Explore"))
                    }
                    .tag(__designTimeInteger("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 1))
                
                VStack {
                    Text(__designTimeString("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value", fallback: "Person"))
                    Button(__designTimeString("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value", fallback: "GO TO HOME")) {
                        selectedIndex = __designTimeInteger("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].[0]", fallback: 0)
                    }
                }
                    .tabItem {
                        Image(systemName: __designTimeString("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "person.fill"))
                        Text(__designTimeString("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Person"))
                    }
                    .tag(__designTimeInteger("#7516.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[2].modifier[1].arg[0].value", fallback: 2))
            }
            .toolbarBackground(Color.gray.opacity(__designTimeFloat("#7516.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
    
#sourceLocation()
    }
}

import struct TabViewDemo.ContentView
#Preview {
    ContentView()
}



