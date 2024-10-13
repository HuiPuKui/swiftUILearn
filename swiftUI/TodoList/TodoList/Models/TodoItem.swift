//
//  TodoItem.swift
//  TodoList
//
//  Created by HuiPuKui on 2024/10/14.
//

import Foundation

struct TodoItem: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func update() -> TodoItem {
        return TodoItem(id: self.id, title: self.title, isCompleted: !self.isCompleted)
    }
}
