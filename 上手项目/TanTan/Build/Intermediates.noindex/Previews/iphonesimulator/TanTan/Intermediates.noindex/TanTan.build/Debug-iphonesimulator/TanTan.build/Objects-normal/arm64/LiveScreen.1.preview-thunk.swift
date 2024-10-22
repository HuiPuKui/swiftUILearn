@_private(sourceFile: "LiveScreen.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension LiveTitle {
    @_dynamicReplacement(for: id) private var __preview__id: RawValue {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Live/LiveScreen.swift", line: 85)
 rawValue 

#sourceLocation()
    }
}

extension LiveScreen {
    @_dynamicReplacement(for: switchTab()) @ViewBuilder private func __preview__switchTab() -> some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Live/LiveScreen.swift", line: 50)
        switch viewModel.selectedTab {
        case .Feature:
            LazyVGrid(
                columns: [GridItem(.flexible()), GridItem(.flexible())],
                alignment: .center,
                spacing: __designTimeFloat("#55462.[1].[2].[0].[0].[0].arg[2].value", fallback: 10.0),
                pinnedViews: [],
                content: {
                    ForEach(viewModel.featuredCard) { card in
                        PickView(card: card, blur: __designTimeBoolean("#55462.[1].[2].[0].[0].[0].arg[4].value.[0].arg[1].value.[0].arg[1].value", fallback: false))
                            .frame(height: __designTimeInteger("#55462.[1].[2].[0].[0].[0].arg[4].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 250))
                    }
                }
            )
            .padding(.horizontal, __designTimeInteger("#55462.[1].[2].[0].[0].[0].modifier[0].arg[1].value", fallback: 10))
            
        case .Nearby:
            LazyVGrid(
                columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())],
                alignment: .center,
                spacing: __designTimeFloat("#55462.[1].[2].[0].[1].[0].arg[2].value", fallback: 10.0),
                pinnedViews: [],
                content: {
                    ForEach(viewModel.featuredCard) { card in
                        PickView(card: card, blur: __designTimeBoolean("#55462.[1].[2].[0].[1].[0].arg[4].value.[0].arg[1].value.[0].arg[1].value", fallback: false))
                            .frame(height: __designTimeInteger("#55462.[1].[2].[0].[1].[0].arg[4].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 250))
                    }
                }
            )
            .padding(.horizontal, __designTimeInteger("#55462.[1].[2].[0].[1].[0].modifier[0].arg[1].value", fallback: 10))
        }
    
#sourceLocation()
    }
}

extension LiveScreen {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Live/LiveScreen.swift", line: 15)
        VStack(spacing: __designTimeInteger("#55462.[1].[1].property.[0].[0].arg[0].value", fallback: 0)) {
            HStack {
                Text(__designTimeString("#55462.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Live"))
                    .font(.system(size: __designTimeInteger("#55462.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25)))
                    .fontWeight(.bold)
                    .padding([.leading, .top], __designTimeInteger("#55462.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 15))
                Spacer()
            }
            
            HStack {
                ForEach(LiveTitle.allCases) { tab in
                    Button {
                        viewModel.selectedTab = tab
                    } label: {
                        Text(tab.rawValue)
                            .font(.system(size: __designTimeInteger("#55462.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 14)))
                            .padding(.all, __designTimeInteger("#55462.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 10))
                            .foregroundColor(viewModel.selectedTab == tab ? .white : .gray)
                            .background(viewModel.selectedTab == tab ? Color.accentColor : .white)
                            .cornerRadius(__designTimeInteger("#55462.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[4].arg[0].value", fallback: 20))
                    }
                }
                
                Spacer()
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: __designTimeBoolean("#55462.[1].[1].property.[0].[0].arg[1].value.[2].arg[1].value", fallback: false)) {
                switchTab()
            }
        }
    
#sourceLocation()
    }
}

import struct TanTan.LiveScreen
import enum TanTan.LiveTitle
#Preview {
    LiveScreen()
}



