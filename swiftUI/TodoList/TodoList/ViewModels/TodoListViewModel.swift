//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by HuiPuKui on 2024/10/14.
//

import Foundation

/*

 CRUD:
 C: Create
 R: Read
 U: Update
 D: Delete
 
 */

class TodoListViewModel: ObservableObject {
    
    @Published var todoItems: [TodoItem] = [] {
        didSet {
            saveItem()
        }
    }
    let itemKey: String = "item_list"
    init() {
        initTodoListItems()
    }
    
    func initTodoListItems() {
//        todoItems = [
//            TodoItem(title: "This is the first item.", isCompleted: false),
//            TodoItem(title: "This is the second item.", isCompleted: true),
//            TodoItem(title: "This is the third item.", isCompleted: false),
//        ]
        
        guard let data = UserDefaults.standard.data(forKey: itemKey), let todoItems = try? JSONDecoder().decode([TodoItem].self, from: data) else {
            return
        }
        
        self.todoItems = todoItems
    }
    
    func deleteItem(indexSet: IndexSet) {
        todoItems.remove(atOffsets: indexSet)
    }

    func moveItem(fromIndexSet: IndexSet, to: Int) {
        todoItems.move(fromOffsets: fromIndexSet, toOffset: to)
    }
    
    func addItem(title: String) {
        let item = TodoItem(title: title, isCompleted: false)
        todoItems.append(item)
    }
    
    func updateItem(item: TodoItem) {
        if let index = todoItems.firstIndex(where: { $0.id == item.id}) {
            todoItems[index] = item.update()
        }
    }
    
    func saveItem() {
        if let data = try? JSONEncoder().encode(todoItems) {
            UserDefaults.standard.setValue(data, forKey: itemKey)
        }
    }
}
