//
//  TodoListRow.swift
//  TodoList
//
//  Created by HuiPuKui on 2024/10/14.
//

import SwiftUI

struct TodoListRow: View {
    let item: TodoItem
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ?  "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct TodoListRow_Previews: PreviewProvider {
    static var itemOne = TodoItem(title: "First", isCompleted: false)
    static var itemTwo = TodoItem(title: "Second", isCompleted: true)
    static var previews: some View {
        Group {
            TodoListRow(item: itemOne)
            TodoListRow(item: itemTwo)
        }
        .previewLayout(.sizeThatFits)
    }
}
