//
//  ContentView.swift
//  TodoList
//
//  Created by HuiPuKui on 2024/10/13.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var viewModel: TodoListViewModel
    
    var body: some View {
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
        .navigationTitle("Todo List App")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
    .environmentObject(TodoListViewModel())
}
