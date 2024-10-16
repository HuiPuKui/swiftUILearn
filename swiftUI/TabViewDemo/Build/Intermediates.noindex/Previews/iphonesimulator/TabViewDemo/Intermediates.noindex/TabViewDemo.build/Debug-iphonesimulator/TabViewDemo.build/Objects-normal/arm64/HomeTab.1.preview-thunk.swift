@_private(sourceFile: "HomeTab.swift") import TabViewDemo
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension HomeTab {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TabViewDemo/TabViewDemo/HomeTab/HomeTab.swift", line: 12)
        ZStack {
            Color.red.ignoresSafeArea()
            Text(__designTimeString("#12406.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Home"))
                .foregroundColor(.white)
        }
        .tabItem {
            Image(systemName: __designTimeString("#12406.[1].[0].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "house.fill"))
            Text(__designTimeString("#12406.[1].[0].property.[0].[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Home"))
        }
    
#sourceLocation()
    }
}

import struct TabViewDemo.HomeTab
#Preview {
    HomeTab()
}



