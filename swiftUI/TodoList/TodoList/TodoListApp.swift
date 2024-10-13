//
//  TodoListApp.swift
//  TodoList
//
//  Created by HuiPuKui on 2024/10/13.
//

import SwiftUI

/*
 
  Model - 数据模型
  View - 页面布局
  ViewModel - 处理商业逻辑
 
 */

@main
struct TodoListApp: App {
    
    @StateObject var viewModel = TodoListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(viewModel)
        }
    }
}
