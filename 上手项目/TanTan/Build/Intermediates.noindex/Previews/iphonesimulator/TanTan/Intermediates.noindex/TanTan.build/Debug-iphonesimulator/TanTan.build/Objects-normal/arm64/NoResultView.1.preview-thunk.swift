@_private(sourceFile: "NoResultView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension NoResultView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/NoResultView.swift", line: 12)
        VStack {
            CircleAvator(photo: __designTimeString("#108274.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "User1"))
            
            Text(__designTimeString("#108274.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Ops, There's no one left to swipe on! Whey ont try editing your filters?"))
                .foregroundColor(.gray)
                .padding(.horizontal, __designTimeInteger("#108274.[1].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 50))
                .padding(.bottom, __designTimeInteger("#108274.[1].[0].property.[0].[0].arg[0].value.[1].modifier[2].arg[1].value", fallback: 10))
            
            Button {
                
            } label: {
                Text(__designTimeString("#108274.[1].[0].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Edit Filter"))
                    .frame(width: __designTimeInteger("#108274.[1].[0].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: 300), height: __designTimeInteger("#108274.[1].[0].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[1].value", fallback: 50))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(__designTimeInteger("#108274.[1].[0].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[4].arg[0].value", fallback: 10))
            }
        }
        .frame(maxHeight: .infinity)
    
#sourceLocation()
    }
}

import struct TanTan.NoResultView
#Preview {
    NoResultView()
}



