@_private(sourceFile: "ViewModifierDemo.swift") import FirstApp
import func SwiftUI.__designTimeSelection
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
        __designTimeSelection(VStack {
            __designTimeSelection(Text(__designTimeString("#15055.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Hello, World!"))
    //            .bold()
                .font(.title) // 大小
                .foregroundColor(.white) // 字色
                .padding()
                .background(.black) // 底色
                .kerning(__designTimeInteger("#15055.[1].[0].property.[0].[0].arg[0].value.[0].modifier[4].arg[0].value", fallback: 5)) // 间距
                .cornerRadius(__designTimeInteger("#15055.[1].[0].property.[0].[0].arg[0].value.[0].modifier[5].arg[0].value", fallback: 10)), "#15055.[1].[0].property.[0].[0].arg[0].value.[0]") // 圆角
            
            __designTimeSelection(Button(__designTimeString("#15055.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Tap Me")) {
                
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#15055.[1].[0].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value.arg[0].value", fallback: 20)), "#15055.[1].[0].property.[0].[0].arg[0].value.[1].modifier[3].arg[0].value")), "#15055.[1].[0].property.[0].[0].arg[0].value.[1]")
        }, "#15055.[1].[0].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct FirstApp.ViewModifierDemo
#Preview {
    ViewModifierDemo()
}



