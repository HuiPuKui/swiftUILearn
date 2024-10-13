@_private(sourceFile: "TodoListRow.swift") import TodoList
import func SwiftUI.__designTimeSelection
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
        __designTimeSelection(Group {
            __designTimeSelection(TodoListRow(item: __designTimeSelection(itemOne, "#73516.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value")), "#73516.[2].[2].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(TodoListRow(item: __designTimeSelection(itemTwo, "#73516.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value")), "#73516.[2].[2].property.[0].[0].arg[0].value.[1]")
        }
        .previewLayout(.sizeThatFits), "#73516.[2].[2].property.[0].[0]")
    
#sourceLocation()
    }
}

extension TodoListRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/TodoListRow.swift", line: 13)
        __designTimeSelection(HStack {
            __designTimeSelection(Image(systemName: __designTimeSelection(item.isCompleted, "#73516.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.if") ?  __designTimeString("#73516.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.then", fallback: "checkmark.circle") : __designTimeString("#73516.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.else", fallback: "circle"))
                .foregroundColor(__designTimeSelection(item.isCompleted, "#73516.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.if") ? .green : .red), "#73516.[1].[1].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Text(__designTimeSelection(item.title, "#73516.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value")), "#73516.[1].[1].property.[0].[0].arg[0].value.[1]")
            __designTimeSelection(Spacer(), "#73516.[1].[1].property.[0].[0].arg[0].value.[2]")
        }
        .font(.title2)
        .padding(.vertical, __designTimeInteger("#73516.[1].[1].property.[0].[0].modifier[1].arg[1].value", fallback: 8)), "#73516.[1].[1].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct TodoList.TodoListRow
import struct TodoList.TodoListRow_Previews

