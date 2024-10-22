@_private(sourceFile: "ContentView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: createTabItem(tab:title:)) private func __preview__createTabItem(tab: TabItem, title: String) -> some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/ContentView.swift", line: 42)
        Button {
            appState.selectedTab = tab
        } label: {
            VStack {
                Image(systemName: tab.rawValue)
                    .font(.system(size: __designTimeInteger("#5428.[1].[2].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .bold))
                    .foregroundColor(appState.selectedTab == tab ? .accentColor : .gray.opacity(__designTimeFloat("#5428.[1].[2].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.else.modifier[0].arg[0].value", fallback: 0.5)))
                    .frame(maxWidth: .infinity)
                
                Text(title)
                    .font(.system(size: __designTimeInteger("#5428.[1].[2].[0].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 10)))
                    .foregroundColor(appState.selectedTab == tab ? .accentColor : .gray.opacity(__designTimeFloat("#5428.[1].[2].[0].arg[1].value.[0].arg[0].value.[1].modifier[1].arg[0].value.else.modifier[0].arg[0].value", fallback: 0.5)))
            }
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/ContentView.swift", line: 15)
        VStack {
            switch appState.selectedTab {
            case .home:
                HomeScreen()
                    .environmentObject(appState)
            case .live:
                LiveScreen()
            case .message:
                MessageListScreen()
                    .environmentObject(appState)
            case .profile:
                ProfileScreen(user: User.Me)
            }
            
            if !appState.isTabBarHidden {
                Spacer()
                HStack {
                    createTabItem(tab: .home, title: __designTimeString("#5428.[1].[1].property.[0].[0].arg[0].value.[1].[0].[1].arg[0].value.[0].arg[1].value", fallback: "Home"))
                    createTabItem(tab: .live, title: __designTimeString("#5428.[1].[1].property.[0].[0].arg[0].value.[1].[0].[1].arg[0].value.[1].arg[1].value", fallback: "Live"))
                    createTabItem(tab: .message, title: __designTimeString("#5428.[1].[1].property.[0].[0].arg[0].value.[1].[0].[1].arg[0].value.[2].arg[1].value", fallback: "Message"))
                    createTabItem(tab: .profile, title: __designTimeString("#5428.[1].[1].property.[0].[0].arg[0].value.[1].[0].[1].arg[0].value.[3].arg[1].value", fallback: "Profile"))
                }
            }
        }
    
#sourceLocation()
    }
}

import struct TanTan.ContentView
import enum TanTan.TabItem
#Preview {
    ContentView()
}



