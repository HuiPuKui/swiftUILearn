@_private(sourceFile: "PickListView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension PickListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/PickListView.swift", line: 15)
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: __designTimeBoolean("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[1].value", fallback: false)) {
                Text(__designTimeString("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[2].value.[0].arg[0].value", fallback: "Discover the people you like. Updated daily."))
                    .multilineTextAlignment(.center)
                    .lineLimit(__designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[1].arg[0].value", fallback: 2))
                    .foregroundColor(.black)
                    .font(.system(size: __designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 16), weight: .medium))
                    .padding(.vertical, __designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[4].arg[1].value", fallback: 10))
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: __designTimeFloat("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[2].value.[1].arg[2].value", fallback: 10.0), pinnedViews: []) {
                    ForEach(cards) { card in
                        PickView(card: card, blur: __designTimeBoolean("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[2].value.[1].arg[4].value.[0].arg[1].value.[0].arg[1].value", fallback: true))
                            .frame(height: __designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[2].value.[1].arg[4].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 240))
                    }
                }
                .padding(.horizontal, __designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[0].arg[2].value.[1].modifier[0].arg[1].value", fallback: 10))
            }
            
            Button {
                
            } label: {
                Text(__designTimeString("#87897.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "Unlock daily picks"))
                    .font(.system(size: __designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 18)))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, __designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[1].value", fallback: 15))
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(__designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[1].arg[1].value.[0].modifier[5].arg[0].value", fallback: 10))
            }
            .padding(__designTimeInteger("#87897.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value", fallback: 15))
        }
        
    
#sourceLocation()
    }
}

import struct TanTan.PickListView
#Preview {
    PickListView(cards: HomeViewModel().displayingCard)
}



