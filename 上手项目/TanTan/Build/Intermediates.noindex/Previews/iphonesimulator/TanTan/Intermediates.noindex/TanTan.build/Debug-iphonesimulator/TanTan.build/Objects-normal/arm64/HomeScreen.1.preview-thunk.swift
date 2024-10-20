@_private(sourceFile: "HomeScreen.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension HomeTitleButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Home/HomeScreen.swift", line: 59)
        Button {
            selectedTitle = title
        } label: {
            Text(title.rawValue)
                .font(.system(size: __designTimeInteger("#52992.[2].[2].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25)))
                .fontWeight(.bold)
                .foregroundColor(selectedTitle == title ? .accentColor : .gray.opacity(__designTimeFloat("#52992.[2].[2].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value.else.modifier[0].arg[0].value", fallback: 0.6)))
        }
    
#sourceLocation()
    }
}

extension HomeScreen {
    @_dynamicReplacement(for: switchTab()) @ViewBuilder private func __preview__switchTab() -> some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Home/HomeScreen.swift", line: 32)
        switch viewModel.selectedTitle {
        case .TANTAN:
            if viewModel.hasMoreCard {
                ZStack {
                    ForEach(viewModel.displayingCard.reversed()) { card in
                        CardContainerView(viewModel: viewModel, card: card)
                            .environmentObject(appState)
                    }
                }
            } else {
                NoResultView()
            }
        case .PICKS:
            Text(__designTimeString("#52992.[1].[3].[0].[1].[0].arg[0].value", fallback: "PICKS"))
        }
    
#sourceLocation()
    }
}

extension HomeScreen {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Home/HomeScreen.swift", line: 16)
        VStack(spacing: __designTimeInteger("#52992.[1].[2].property.[0].[0].arg[0].value", fallback: 0)) {
            if !appState.isFullScreen {
                HStack {
                    HomeTitleButton(selectedTitle: $viewModel.selectedTitle, title: .TANTAN)
                    HomeTitleButton(selectedTitle: $viewModel.selectedTitle, title: .PICKS)
                    Spacer()
                }
                .padding([.leading, .top], __designTimeInteger("#52992.[1].[2].property.[0].[0].arg[1].value.[0].[0].[0].modifier[0].arg[1].value", fallback: 15))
            }
            
            switchTab()
        }
    
#sourceLocation()
    }
}

import struct TanTan.HomeScreen
import struct TanTan.HomeTitleButton
#Preview {
    HomeScreen()
        .environmentObject(AppState())
}



