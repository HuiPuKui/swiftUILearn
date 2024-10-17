@_private(sourceFile: "UserCardView.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension UserCardView {
    @_dynamicReplacement(for: updateimageIndex(hasMoreImage:)) private func __preview__updateimageIndex(hasMoreImage: Bool) {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/UserCardView.swift", line: 51)
        let nextIndex = hasMoreImage ? imageIndex + __designTimeInteger("#2741.[1].[3].[0].value.then.[0]", fallback: 1) : imageIndex - __designTimeInteger("#2741.[1].[3].[0].value.else.[0]", fallback: 1)
        imageIndex = min(max(__designTimeInteger("#2741.[1].[3].[1].[0]", fallback: 0), nextIndex), userCard.photos.count - __designTimeInteger("#2741.[1].[3].[1].[1]", fallback: 1))
    
#sourceLocation()
    }
}

extension UserCardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/UserCardView.swift", line: 16)
        GeometryReader { proxy in
            let frameWidth = proxy.size.width
            let frameHeight = proxy.size.height
            
            Image(userCard.photos[imageIndex])
                .resizable()
                .frame(width: frameWidth, height: frameHeight)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(__designTimeInteger("#2741.[1].[2].property.[0].[0].arg[0].value.[2].modifier[3].arg[0].value", fallback: 20))
            
            HStack {
                Rectangle()
                    .onTapGesture {
                        updateimageIndex(hasMoreImage: __designTimeBoolean("#2741.[1].[2].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: false))
                    }
                Rectangle()
                    .onTapGesture {
                        updateimageIndex(hasMoreImage: __designTimeBoolean("#2741.[1].[2].property.[0].[0].arg[0].value.[3].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: true))
                    }
            }
            .foregroundColor(.white.opacity(__designTimeFloat("#2741.[1].[2].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.01)))
            
            HStack {
                ForEach(__designTimeInteger("#2741.[1].[2].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<userCard.photos.count, id: \.self) { imageIndex in
                    RoundedRectangle(cornerRadius: __designTimeInteger("#2741.[1].[2].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: 20))
                        .frame(height: __designTimeInteger("#2741.[1].[2].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 4))
                        .foregroundColor(self.imageIndex == imageIndex ? .white : .gray).opacity(__designTimeFloat("#2741.[1].[2].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[2].value.[0].modifier[2].arg[0].value", fallback: 0.5))
                }
            }
            .padding(.top, __designTimeInteger("#2741.[1].[2].property.[0].[0].arg[0].value.[4].modifier[0].arg[1].value", fallback: 10))
            .padding(.horizontal)
        }
    
#sourceLocation()
    }
}

import struct TanTan.UserCardView
#Preview {
    UserCardView(userCard: UserCard(name: "Jame", age: 23, place: "NY", zodiac: "Cancer", photos: ["User1", "User2"]))
}



