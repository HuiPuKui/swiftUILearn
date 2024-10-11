@_private(sourceFile: "BindingDemo.swift") import FirstApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ButtonView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/FirstApp/FirstApp/BindingDemo.swift", line: 30)
        Button(__designTimeString("#35470.[2].[2].property.[0].[0].arg[0].value", fallback: "Button")) {
            bgColor = .orange
            buttonColor = .pink
        }
        .buttonStyle(.borderedProminent)
        .accentColor(buttonColor)
    
#sourceLocation()
    }
}

extension BindingDemo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/swiftUI/FirstApp/FirstApp/BindingDemo.swift", line: 17)
        ZStack {
            bgColor.ignoresSafeArea(.all)
            ButtonView(bgColor: $bgColor) // 这里是地址 $
        }
    
#sourceLocation()
    }
}

import struct FirstApp.BindingDemo
import struct FirstApp.ButtonView
#Preview {
    BindingDemo()
}



