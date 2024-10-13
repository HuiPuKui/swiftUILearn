@_private(sourceFile: "TodoListRow.swift") import TodoList
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TodoListRow_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/TodoListRow.swift", line: 28)
        Group {
            TodoListRow(item: itemOne)
            TodoListRow(item: itemTwo)
        }
        .previewLayout(.sizeThatFits)
    
#sourceLocation()
    }
}

extension TodoListRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/TodoListRow.swift", line: 13)
        HStack {
            Image(systemName: item.isCompleted ?  __designTimeString("#73516.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.then", fallback: "checkmark.circle") : __designTimeString("#73516.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.else", fallback: "circle"))
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, __designTimeInteger("#73516.[1].[1].property.[0].[0].modifier[1].arg[1].value", fallback: 8))
    
#sourceLocation()
    }
}

import struct TodoList.TodoListRow
import struct TodoList.TodoListRow_Previews

