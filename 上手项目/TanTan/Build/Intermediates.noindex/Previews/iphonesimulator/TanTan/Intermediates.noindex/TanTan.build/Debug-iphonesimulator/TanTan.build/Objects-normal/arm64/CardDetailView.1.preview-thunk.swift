@_private(sourceFile: "CardDetailView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CardDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/CardDetailView.swift", line: 13)
        let screen = UIScreen.main.bounds
        ScrollView(showsIndicators: __designTimeBoolean("#32271.[1].[1].property.[0].[1].arg[0].value", fallback: false)) {
            VStack(spacing: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[0].value", fallback: 0)) {
                UserCardView(userCard: card, isFullScreen: __designTimeBoolean("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[0].arg[1].value", fallback: true))
                    .frame(width: screen.width, height: screen.height * __designTimeFloat("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[1].value.[0]", fallback: 0.7))
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(card.name)
                                .font(.system(size: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 32), weight: .bold))
                            Text(String(card.age))
                                .font(.system(size: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 28), weight: .light))
                            Spacer()
                        }
                        
                        Text(card.place)
                            .font(.system(size: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[1].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 18), weight: .light))
                            .foregroundColor(.gray)
                    }
                    .padding([.horizontal, .top], __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[1].value", fallback: 20))
                    
                    Button {
                        
                    } label: {
                        Image(systemName: __designTimeString("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "arrow.up.circle.fill"))
                            .font(.system(size: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                            .background(.white)
                            .clipShape(Circle())
                    }
                    .padding(.trailing, __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[1].arg[0].value.[1].modifier[0].arg[1].value", fallback: 30))
                    .offset(y: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[1].arg[0].value.[1].modifier[1].arg[0].value", fallback: -40))
                }
                Spacer(minLength: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[2].arg[0].value", fallback: 20))
                Text(__designTimeString("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[3].arg[0].value", fallback: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."))
                    .font(.system(size: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[3].modifier[0].arg[0].value.arg[0].value", fallback: 18), weight: .medium))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[3].modifier[3].arg[1].value", fallback: 20))
                
                Spacer(minLength: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[4].arg[0].value", fallback: 20))
                VStack(spacing: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[5].arg[0].value", fallback: 20)) {
                    Button {
                        
                    } label: {
                        VStack(spacing: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[5].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: 18)) {
                            Text("SHARE \(card.name.uppercased())'S PROFILE")
                                .font(.system(size: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[5].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16), weight: .medium))
                            
                            Text(__designTimeString("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[5].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value", fallback: "SEE WHAT A FRIEND THINKS"))
                                .font(.system(size: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[5].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 14), weight: .medium))
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        Text("REPORT \(card.name.uppercased())")
                            .font(.system(size: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[5].arg[1].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 18), weight: .medium))
                            .foregroundColor(.black)
                            .opacity(__designTimeFloat("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[5].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[0].value", fallback: 0.75))
                    }
                }
                
                Spacer(minLength: __designTimeInteger("#32271.[1].[1].property.[0].[1].arg[1].value.[0].arg[1].value.[6].arg[0].value", fallback: 10))
            }
        }
        
    
#sourceLocation()
    }
}

import struct TanTan.CardDetailView
#Preview {
    CardDetailView(card: .init(name: "Jame", age: 23, place: "New Youk", zodiac: "Cancer", photos: ["User1"]))
}



