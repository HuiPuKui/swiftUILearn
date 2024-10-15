@_private(sourceFile: "NoItemsView.swift") import TodoList
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension NoItemsView {
    @_dynamicReplacement(for: animation()) private func __preview__animation() {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/NoItemsView.swift", line: 39)
        DispatchQueue.main.asyncAfter(deadline: .now() + __designTimeFloat("#8310.[1].[2].[0].modifier[0].arg[0].value.[0]", fallback: 1.5)) {
            withAnimation(
                Animation.easeInOut(duration: 1)
                    .repeatForever()
            ) {
                animated.toggle()
            }
        }
    
#sourceLocation()
    }
}

extension NoItemsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/TodoList/TodoList/Views/NoItemsView.swift", line: 15)
        ScrollView {
            VStack {
                Text(__designTimeString("#8310.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "No Items"))
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(__designTimeString("#8310.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Please add items"))
                
                NavigationLink(destination: AddView(), label: {
                    Text(__designTimeString("#8310.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Add Here"))
                        .foregroundColor(.white)
                        .frame(height: __designTimeInteger("#8310.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[1].arg[0].value", fallback: 55))
                        .frame(maxWidth: .infinity)
                        .background(animated ? Color.accentColor : Color.red)
                        .cornerRadius(__designTimeInteger("#8310.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[4].arg[0].value", fallback: 10))
                })
                .padding(.horizontal, animated ? __designTimeInteger("#8310.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[1].value.then", fallback: 50) : __designTimeInteger("#8310.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[1].value.else", fallback: 30))
            }
            .padding(__designTimeInteger("#8310.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 40))
            .onAppear(perform: animation)
        }
    
#sourceLocation()
    }
}

import struct TodoList.NoItemsView
#Preview {
    NoItemsView()
}



