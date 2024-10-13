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
    @_dynamicReplacement(for: addItem(title:)) private func __preview__addItem(title: String) {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/AddView.swift", line: 44)
        viewModel.addItem(title: title);
    
#sourceLocation()
    }
}

extension AddView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/AddView.swift", line: 17)
        ScrollView {
            VStack {
                TextField(__designTimeString("#78211.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Type here..."), text: $text)
                    .padding(.horizontal)
                    .frame(height: __designTimeInteger("#78211.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 55))
                    .background(.gray.opacity(__designTimeFloat("#78211.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.2)))
                    .cornerRadius(__designTimeInteger("#78211.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 10))
                
                Button {
                    viewModel.addItem(title: text)
                    dismiss()
                } label: {
                    Text(__designTimeString("#78211.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "SAVE"))
                        .foregroundColor(.white)
                        .frame(height: __designTimeInteger("#78211.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value", fallback: 55))
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(__designTimeInteger("#78211.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[0].value", fallback: 10))
                }

            }
            .padding(__designTimeInteger("#78211.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 15))
        }
        .navigationTitle(__designTimeString("#78211.[1].[3].property.[0].[0].modifier[0].arg[0].value", fallback: "Add an Item"))
    
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



