@_private(sourceFile: "ContentView.swift") import CustomTabBar
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: switchToTab(tab:)) private func __preview__switchToTab(tab: TabBarItem) {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/CustomTabBar/CustomTabBar/ContentView.swift", line: 63)
        selection = tab
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: tabItem(tab:)) private func __preview__tabItem(tab: TabBarItem) -> some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/CustomTabBar/CustomTabBar/ContentView.swift", line: 50)
        VStack {
            Image(systemName: tab.icon)
            Text(tab.title)
                .font(.footnote)
        }
        .foregroundColor(selection == tab ? tab.color : Color.gray)
        .padding(.vertical, __designTimeInteger("#16347.[1].[3].[0].modifier[1].arg[1].value", fallback: 8))
        .frame(maxWidth: .infinity)
        .background(selection == tab ? tab.color.opacity(__designTimeFloat("#16347.[1].[3].[0].modifier[3].arg[0].value.then.modifier[0].arg[0].value", fallback: 0.2)) : Color.clear)
        .cornerRadius(__designTimeInteger("#16347.[1].[3].[0].modifier[4].arg[0].value", fallback: 10))
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/CustomTabBar/CustomTabBar/ContentView.swift", line: 21)
        VStack {
            
            switch selection.title {
            case "Home":
                selection.color.ignoresSafeArea()
            case "Explore":
                selection.color.ignoresSafeArea()
            case "Profile":
                selection.color.ignoresSafeArea()
            default:
                EmptyView()
            }
            
            Spacer()
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    tabItem(tab: tab)
                        .onTapGesture {
                            switchToTab(tab: tab)
                        }
                }
            }
            .padding(__designTimeInteger("#16347.[1].[2].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 8))
            .background(Color.gray.opacity(__designTimeFloat("#16347.[1].[2].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.05)).ignoresSafeArea(edges: .bottom))
        }
    
#sourceLocation()
    }
}

import struct CustomTabBar.ContentView
import struct CustomTabBar.TabBarItem
#Preview {
    ContentView()
}



