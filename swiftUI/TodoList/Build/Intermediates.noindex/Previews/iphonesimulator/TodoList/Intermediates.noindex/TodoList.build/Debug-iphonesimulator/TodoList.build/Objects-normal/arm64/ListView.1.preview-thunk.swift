@_private(sourceFile: "ListView.swift") import TodoList
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
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/ListView.swift", line: 15)
        ZStack {
            if viewModel.todoItems.isEmpty {
                NoItemsView()
            } else {
                List {
                    ForEach(viewModel.todoItems) { item in
                        TodoListRow(item: item)
                            .onTapGesture {
                                viewModel.updateItem(item: item)
                            }
                    }
                    .onDelete(perform: viewModel.deleteItem)
                    .onMove(perform: viewModel.moveItem)
                }
                .listStyle(.plain)
            }
        }
        .navigationTitle(__designTimeString("#11652.[1].[1].property.[0].[0].modifier[0].arg[0].value", fallback: "Todo List App"))
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink(__designTimeString("#11652.[1].[1].property.[0].[0].modifier[1].arg[1].value.arg[0].value", fallback: "Add"), destination: AddView()))
    
#sourceLocation()
    }
}

import struct TodoList.ListView
#Preview {
    NavigationStack {
        ListView()
    }
    .environmentObject(TodoListViewModel())
}



