@_private(sourceFile: "CardContainerView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CardContainerView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/CardContainerView.swift", line: 15)
        ZStack(alignment: .bottom) {
            ForEach(viewModel.displayingCard.reversed()) { card in
                UserCardView(userCard: card, swipeAction: viewModel.nextUserCard)
            }
            if viewModel.hasMoreCard {
                HStack {
                    ForEach(ButtonType.allCases) { type in
                        RoundButton(type: type)
                            .frame(height: __designTimeInteger("#5409.[1].[1].property.[0].[0].arg[1].value.[1].[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 45))
                    }
                }
                .padding(.bottom, __designTimeInteger("#5409.[1].[1].property.[0].[0].arg[1].value.[1].[0].[0].modifier[0].arg[1].value", fallback: 15))
            }
        }
        .padding(.horizontal, __designTimeInteger("#5409.[1].[1].property.[0].[0].modifier[0].arg[1].value", fallback: 20))
        .padding(.vertical, __designTimeInteger("#5409.[1].[1].property.[0].[0].modifier[1].arg[1].value", fallback: 50))
    
#sourceLocation()
    }
}

import struct TanTan.CardContainerView
#Preview {
    CardContainerView(viewModel: HomeViewModel())
}



