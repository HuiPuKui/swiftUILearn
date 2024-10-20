@_private(sourceFile: "HomeScreen.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension HomeScreen {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/HomeScreen.swift", line: 15)
        if viewModel.hasMoreCard {
            CardContainerView(viewModel: viewModel)
        } else {
            NoResultView()
        }
    
#sourceLocation()
    }
}

import struct TanTan.HomeScreen
#Preview {
    HomeScreen()
}



