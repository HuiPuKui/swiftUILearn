//
//  ContentView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: TabItem = .home
    
    var body: some View {
        VStack {
            switch selectedTab {
            case .home:
                Text("Home")
            case .live:
                Text("Live")
            case .message:
                Text("Message")
            case .profile:
                Text("Profile")
            }
            Spacer()
            
            HStack {
                createTabItem(tab: .home, title: "Home")
                createTabItem(tab: .live, title: "Live")
                createTabItem(tab: .message, title: "Message")
                createTabItem(tab: .profile, title: "Profile")
            }
        }
    }
    
    func createTabItem(tab: TabItem, title: String) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack {
                Image(systemName: tab.rawValue)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(selectedTab == tab ? .accentColor : .gray.opacity(0.5))
                    .frame(maxWidth: .infinity)
                
                Text(title)
                    .font(.system(size: 10))
                    .foregroundColor(selectedTab == tab ? .accentColor : .gray.opacity(0.5))
            }
        }
    }
}

enum TabItem: String {
    case home = "rectangle.fill.on.rectangle.fill"
    case live = "play.tv.fill"
    case message = "message.fill"
    case profile = "person.fill"
}

#Preview {
    ContentView()
}
