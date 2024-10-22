@_private(sourceFile: "SwipeCard.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SwipeCard.SingleSwipeCard {
typealias SingleSwipeCard = SwipeCard.SingleSwipeCard

    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Profile/Component/SwipeCard.swift", line: 42)
            VStack(spacing: __designTimeInteger("#44638.[1].[1].[2].property.[0].[0].arg[0].value", fallback: 10)) {
                Spacer()
                
                Text(title)
                    .font(.system(size: __designTimeInteger("#44638.[1].[1].[2].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 26), weight: .semibold))
                Text(description)
            }
            .padding(.bottom, __designTimeInteger("#44638.[1].[1].[2].property.[0].[0].modifier[0].arg[1].value", fallback: 60))
        
#sourceLocation()
    }
}

extension SwipeCard {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Profile/Component/SwipeCard.swift", line: 12)
        VStack(spacing: __designTimeInteger("#44638.[1].[0].property.[0].[0].arg[0].value", fallback: 0)) {
            TabView {
                SingleSwipeCard(title: __designTimeString("#44638.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Get TanTan Gold"), description: __designTimeString("#44638.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[1].value", fallback: "See who likes you & more!"))
                
                SingleSwipeCard(title: __designTimeString("#44638.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Get Matches Faster"), description: __designTimeString("#44638.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[1].value", fallback: "Boost your profile once a month!"))
                
                SingleSwipeCard(title: __designTimeString("#44638.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[0].value", fallback: "Increase Your Chances"), description: __designTimeString("#44638.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[2].arg[1].value", fallback: "Boost your profile once a month!"))
            }
            .tabViewStyle(PageTabViewStyle())
            
            Button {
                
            } label: {
                Text(__designTimeString("#44638.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "MY TANTAN PLUS"))
                    .font(.system(size: __designTimeInteger("#44638.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 18), weight: .semibold))
                    .padding(.vertical, __designTimeInteger("#44638.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[1].arg[1].value", fallback: 20))
                    .padding(.horizontal, __designTimeInteger("#44638.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                    .background(.white)
                    .cornerRadius(__designTimeInteger("#44638.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[4].arg[0].value", fallback: 30))
                    .shadow(color: .gray.opacity(__designTimeFloat("#44638.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[5].arg[0].value.modifier[0].arg[0].value", fallback: 0.2)), radius: __designTimeInteger("#44638.[1].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[5].arg[1].value", fallback: 10))
            }
            .padding(.bottom, __designTimeInteger("#44638.[1].[0].property.[0].[0].arg[1].value.[1].modifier[0].arg[1].value", fallback: 0))
        }
        
    
#sourceLocation()
    }
}

import struct TanTan.SwipeCard
#Preview {
    SwipeCard()
}



