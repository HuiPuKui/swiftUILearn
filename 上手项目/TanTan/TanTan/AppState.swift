//
//  AppState.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/17.
//

import Foundation

class AppState: ObservableObject {
    @Published var selectedTab: TabItem // 底部导航栏
    @Published var isTabBarHidden: Bool // 是否全屏
    @Published var isPremium: Bool
    
    init(selectedTab: TabItem = .home, isTabBarHidden: Bool = false, isPremium: Bool = false) {
        self.selectedTab = selectedTab
        self.isTabBarHidden = isTabBarHidden
        self.isPremium = isPremium
    }
}
