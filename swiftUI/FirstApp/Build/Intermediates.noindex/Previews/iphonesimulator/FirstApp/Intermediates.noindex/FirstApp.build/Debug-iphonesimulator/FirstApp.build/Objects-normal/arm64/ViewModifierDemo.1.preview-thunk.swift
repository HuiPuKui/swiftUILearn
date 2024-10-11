@_private(sourceFile: "ViewModifierDemo.swift") import FirstApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ViewModifierDemo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/FirstApp/FirstApp/ViewModifierDemo.swift", line: 12)
        VStack {
            Text(__designTimeString("#15055.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Hello, World!"))
    //            .bold()
                .font(.title) // 大小
                .foregroundColor(.white) // 字色
                .padding()
                .background(.black) // 底色
                .kerning(__designTimeInteger("#15055.[1].[0].property.[0].[0].arg[0].value.[0].modifier[4].arg[0].value", fallback: 5)) // 间距
                .cornerRadius(__designTimeInteger("#15055.[1].[0].property.[0].[0].arg[0].value.[0].modifier[5].arg[0].value", fallback: 10)) // 圆角
            
            Button(__designTimeString("#15055.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Tap Me")) {
                
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#15055.[1].[0].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value.arg[0].value", fallback: 20)))
            
            Button(__designTimeString("#15055.[1].[0].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "Tap Me")) {
                
            }
            .buttonStyle(.borderedProminent)
        }
    
#sourceLocation()
    }
}

import struct FirstApp.ViewModifierDemo
#Preview {
    ViewModifierDemo()
}



