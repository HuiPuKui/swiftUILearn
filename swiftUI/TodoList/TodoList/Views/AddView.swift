//
//  AddView.swift
//  TodoList
//
//  Created by HuiPuKui on 2024/10/14.
//

import SwiftUI

struct AddView: View {
    
    @EnvironmentObject var viewModel: TodoListViewModel
    @Environment(\.dismiss) var dismiss
    @State var text: String = ""
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type here...", text: $text)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button {
                    addItem(title: text)
                } label: {
                    Text("SAVE")
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(15)
        }
        .navigationTitle("Add an Item")
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }
    
    func addItem(title: String) {
        if passValidation() {
            viewModel.addItem(title: title);
            dismiss()
        }
    }
    
    func passValidation() -> Bool {
        if text.count < 3 {
            showAlert = true
            alertTitle = "You must input more than 3 word."
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
    .environmentObject(TodoListViewModel())
}
