@_private(sourceFile: "ButtonDemo.swift") import FirstApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ButtonDemo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/FirstApp/FirstApp/ButtonDemo.swift", line: 15)
        VStack {
            Text(title)
            
            Button(__designTimeString("#21654.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Tap Me"), action: {
                title = __designTimeString("#21654.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].[0]", fallback: "World Hello")
            })
            
            Button(action: {
                title = __designTimeString("#21654.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0]", fallback: "World Hello #2")
            }, label: {
                Text(__designTimeString("#21654.[1].[1].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Button"))
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(__designTimeInteger("#21654.[1].[1].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 10))
                            .shadow(radius: __designTimeInteger("#21654.[1].[1].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value.modifier[1].arg[0].value", fallback: 10))
                    )
            })
            
            Button(action: {
                title = __designTimeString("#21654.[1].[1].property.[0].[0].arg[0].value.[3].arg[0].value.[0].[0]", fallback: "World Hello #2")
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: __designTimeInteger("#21654.[1].[1].property.[0].[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[0].value", fallback: 75), height: __designTimeInteger("#21654.[1].[1].property.[0].[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[1].value", fallback: 75))
                    .shadow(radius: __designTimeInteger("#21654.[1].[1].property.[0].[0].arg[0].value.[3].arg[1].value.[0].modifier[2].arg[0].value", fallback: 10))
                    .overlay(
                        Image(systemName: __designTimeString("#21654.[1].[1].property.[0].[0].arg[0].value.[3].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: "heart.fill"))
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
        }
    
#sourceLocation()
    }
}

import struct FirstApp.ButtonDemo
#Preview {
    ButtonDemo()
}



