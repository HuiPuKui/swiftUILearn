@_private(sourceFile: "AddView.swift") import TodoList
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension AddView {
    @_dynamicReplacement(for: getAlert()) private func __preview__getAlert() -> Alert {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/AddView.swift", line: 64)
        return Alert(title: Text(alertTitle))
    
#sourceLocation()
    }
}

extension AddView {
    @_dynamicReplacement(for: passValidation()) private func __preview__passValidation() -> Bool {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/AddView.swift", line: 55)
        if text.count < 3 {
            showAlert = __designTimeBoolean("#17503.[1].[7].[0].[0].[0].[0]", fallback: true)
            alertTitle = __designTimeString("#17503.[1].[7].[0].[0].[1].[0]", fallback: "You must input more than 3 word.")
            return __designTimeBoolean("#17503.[1].[7].[0].[0].[2]", fallback: false)
        }
        return __designTimeBoolean("#17503.[1].[7].[1]", fallback: true)
    
#sourceLocation()
    }
}

extension AddView {
    @_dynamicReplacement(for: addItem(title:)) private func __preview__addItem(title: String) {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/AddView.swift", line: 48)
        if passValidation() {
            viewModel.addItem(title: title);
            dismiss()
        }
    
#sourceLocation()
    }
}

extension AddView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/AddView.swift", line: 19)
        ScrollView {
            VStack {
                TextField(__designTimeString("#17503.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Type here..."), text: $text)
                    .padding(.horizontal)
                    .frame(height: __designTimeInteger("#17503.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 55))
                    .background(.gray.opacity(__designTimeFloat("#17503.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.2)))
                    .cornerRadius(__designTimeInteger("#17503.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 10))
                
                Button {
                    addItem(title: text)
                } label: {
                    Text(__designTimeString("#17503.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "SAVE"))
                        .foregroundColor(.white)
                        .frame(height: __designTimeInteger("#17503.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value", fallback: 55))
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(__designTimeInteger("#17503.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[0].value", fallback: 10))
                }

            }
            .padding(__designTimeInteger("#17503.[1].[5].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 15))
        }
        .navigationTitle(__designTimeString("#17503.[1].[5].property.[0].[0].modifier[0].arg[0].value", fallback: "Add an Item"))
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    
#sourceLocation()
    }
}

import struct TodoList.AddView
#Preview {
    NavigationStack {
        AddView()
    }
    .environmentObject(TodoListViewModel())
}



