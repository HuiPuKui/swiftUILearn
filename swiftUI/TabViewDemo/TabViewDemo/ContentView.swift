//
//  ContentView.swift
//  TabViewDemo
//
//  Created by HuiPuKui on 2024/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            Group {
                HomeTab()
                    .tag(0)
                
                Text("Explore")
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Explore")
                    }
                    .tag(1)
                
                VStack {
                    Text("Person")
                    Button("GO TO HOME") {
                        selectedIndex = 0
                    }
                }
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Person")
                    }
                    .tag(2)
            }
            .toolbarBackground(Color.gray.opacity(0.1), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}
