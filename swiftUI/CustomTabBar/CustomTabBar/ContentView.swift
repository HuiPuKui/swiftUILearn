//
//  ContentView.swift
//  CustomTabBar
//
//  Created by HuiPuKui on 2024/10/17.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: TabBarItem = TabBarItem(icon: "house", title: "Home", color: Color.red)
    private let tabs: [TabBarItem] = [
        TabBarItem(icon: "house", title: "Home", color: Color.red),
        
        TabBarItem(icon: "globe", title: "Explore", color: Color.blue),
        
        TabBarItem(icon: "person", title: "Person", color: Color.green)
    ]
    
    var body: some View {
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
            .padding(8)
            .background(Color.gray.opacity(0.05).ignoresSafeArea(edges: .bottom))
        }
    }
    
    func tabItem(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.icon)
            Text(tab.title)
                .font(.footnote)
        }
        .foregroundColor(selection == tab ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(selection == tab ? tab.color.opacity(0.2) : Color.clear)
        .cornerRadius(10)
    }
    
    func switchToTab(tab: TabBarItem) {
        selection = tab
    }
}

struct TabBarItem: Hashable {
    let icon: String
    let title: String
    let color: Color
}

#Preview {
    ContentView()
}
