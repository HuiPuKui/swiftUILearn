//
//  HomeTab.swift
//  TabViewDemo
//
//  Created by HuiPuKui on 2024/10/17.
//

import SwiftUI

struct HomeTab: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Home")
                .foregroundColor(.white)
        }
        .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
        }
    }
}

#Preview {
    HomeTab()
}
