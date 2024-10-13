@_private(sourceFile: "ListView.swift") import TodoList
import func SwiftUI.__designTimeSelection
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/ListView.swift", line: 19)
        __designTimeSelection(List {
            __designTimeSelection(ForEach(__designTimeSelection(todoItems, "#70523.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value")) { item in
                __designTimeSelection(TodoListRow(item: __designTimeSelection(item, "#70523.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")), "#70523.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }
            .onDelete(perform: { indexSet in
                __designTimeSelection(todoItems.remove(atOffsets: __designTimeSelection(indexSet, "#70523.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].modifier[0].arg[0].value")), "#70523.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
            }), "#70523.[1].[1].property.[0].[0].arg[0].value.[0]")
        }
        .listStyle(.plain)
        .navigationTitle(__designTimeString("#70523.[1].[1].property.[0].[0].modifier[1].arg[0].value", fallback: "Todo List App"))
        .navigationBarItems(leading: __designTimeSelection(EditButton(), "#70523.[1].[1].property.[0].[0].modifier[2].arg[0].value"), trailing: __designTimeSelection(NavigationLink(__designTimeString("#70523.[1].[1].property.[0].[0].modifier[2].arg[1].value.arg[0].value", fallback: "Add"), destination: __designTimeSelection(AddView(), "#70523.[1].[1].property.[0].[0].modifier[2].arg[1].value.arg[1].value")), "#70523.[1].[1].property.[0].[0].modifier[2].arg[1].value")), "#70523.[1].[1].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct TodoList.ListView
#Preview {
    NavigationStack {
        ListView()
    }
}



