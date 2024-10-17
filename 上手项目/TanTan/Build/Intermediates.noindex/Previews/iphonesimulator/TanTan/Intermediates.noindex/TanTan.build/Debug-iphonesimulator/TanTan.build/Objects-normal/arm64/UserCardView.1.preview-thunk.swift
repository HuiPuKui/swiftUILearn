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
    @_dynamicReplacement(for: createUserCardBottomInfo()) private func __preview__createUserCardBottomInfo() -> some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/UserCardView.swift", line: 119)
        HStack {
            VStack(alignment: .leading, spacing: __designTimeInteger("#2741.[1].[8].[0].arg[0].value.[0].arg[1].value", fallback: 5)) {
                Text("\(userCard.name), \(userCard.age)")
                    .font(.system(size: __designTimeInteger("#2741.[1].[8].[0].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                    .fontWeight(.heavy)
                HStack {
                    Text(userCard.zodiac)
                        .fontWeight(.bold)
                        .padding(__designTimeInteger("#2741.[1].[8].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 5))
                        .background(.white.opacity(__designTimeFloat("#2741.[1].[8].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
                        .cornerRadius(__designTimeInteger("#2741.[1].[8].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[0].modifier[3].arg[0].value", fallback: 5))
                    Text(userCard.place)
                }
                
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: __designTimeString("#2741.[1].[8].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "info.circle.fill"))
                    .font(.system(size: __designTimeInteger("#2741.[1].[8].[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                    .padding(__designTimeInteger("#2741.[1].[8].[0].arg[0].value.[2].arg[1].value.[0].modifier[1].arg[0].value", fallback: 8))
            })
        }
        .foregroundColor(.white)
        .padding()
        .background(
            LinearGradient(colors: [.black.opacity(__designTimeFloat("#2741.[1].[8].[0].modifier[2].arg[0].value.arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.9)), .clear], startPoint: .bottom, endPoint: .top)
        )
        .cornerRadius(__designTimeInteger("#2741.[1].[8].[0].modifier[3].arg[0].value", fallback: 20))
        .clipped()
    
#sourceLocation()
    }
}

extension UserCardView {
    @_dynamicReplacement(for: updateimageIndex(hasMoreImage:)) private func __preview__updateimageIndex(hasMoreImage: Bool) {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/UserCardView.swift", line: 114)
        let nextIndex = hasMoreImage ? imageIndex + __designTimeInteger("#2741.[1].[7].[0].value.then.[0]", fallback: 1) : imageIndex - __designTimeInteger("#2741.[1].[7].[0].value.else.[0]", fallback: 1)
        imageIndex = min(max(__designTimeInteger("#2741.[1].[7].[1].[0]", fallback: 0), nextIndex), userCard.photos.count - __designTimeInteger("#2741.[1].[7].[1].[1]", fallback: 1))
    
#sourceLocation()
    }
}

extension UserCardView {
    @_dynamicReplacement(for: createUserCardLabel(title:degree:color:)) private func __preview__createUserCardLabel(title: String, degree: Double, color: Color) -> some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/UserCardView.swift", line: 100)
        Text(title)
            .tracking(__designTimeInteger("#2741.[1].[6].[0].modifier[0].arg[0].value", fallback: 3))
            .font(.title)
            .fontWeight(.bold)
            .padding(.horizontal)
            .foregroundColor(color)
            .overlay(
                RoundedRectangle(cornerRadius: __designTimeInteger("#2741.[1].[6].[0].modifier[5].arg[0].value.arg[0].value", fallback: 5))
                    .stroke(color, lineWidth: __designTimeInteger("#2741.[1].[6].[0].modifier[5].arg[0].value.modifier[0].arg[1].value", fallback: 3))
            )
            .rotationEffect(Angle(degrees: degree))
    
#sourceLocation()
    }
}

extension UserCardView {
    @_dynamicReplacement(for: getRotationAmount()) private func __preview__getRotationAmount() -> Double {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/UserCardView.swift", line: 93)
        let max = UIScreen.main.bounds.width / __designTimeInteger("#2741.[1].[5].[0].value.[0]", fallback: 2)
        let currentAmount = offset.width
        let percentage = currentAmount / max
        return Double(percentage * __designTimeInteger("#2741.[1].[5].[3].arg[0].value.[0]", fallback: 10))
    
#sourceLocation()
    }
}

extension UserCardView {
    @_dynamicReplacement(for: getScaleAmount()) private func __preview__getScaleAmount() -> CGFloat {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/UserCardView.swift", line: 86)
        let max = UIScreen.main.bounds.width / __designTimeInteger("#2741.[1].[4].[0].value.[0]", fallback: 2)
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        return __designTimeFloat("#2741.[1].[4].[3].[0]", fallback: 1.0) - min(percentage, __designTimeFloat("#2741.[1].[4].[3].[1]", fallback: 0.7)) * __designTimeFloat("#2741.[1].[4].[3].[2]", fallback: 0.3)
    
#sourceLocation()
    }
}

extension UserCardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/UserCardView.swift", line: 17)
        GeometryReader { proxy in
            let frameWidth = proxy.size.width
            let frameHeight = proxy.size.height
            
            Image(userCard.photos[imageIndex])
                .resizable()
                .frame(width: frameWidth, height: frameHeight)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(__designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[2].modifier[3].arg[0].value", fallback: 20))
            
            HStack {
                Rectangle()
                    .onTapGesture {
                        updateimageIndex(hasMoreImage: __designTimeBoolean("#2741.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: false))
                    }
                Rectangle()
                    .onTapGesture {
                        updateimageIndex(hasMoreImage: __designTimeBoolean("#2741.[1].[3].property.[0].[0].arg[0].value.[3].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: true))
                    }
            }
            .foregroundColor(.white.opacity(__designTimeFloat("#2741.[1].[3].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.01)))
            
            HStack {
                ForEach(__designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<userCard.photos.count, id: \.self) { imageIndex in
                    RoundedRectangle(cornerRadius: __designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: 20))
                        .frame(height: __designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 4))
                        .foregroundColor(self.imageIndex == imageIndex ? .white : .gray).opacity(__designTimeFloat("#2741.[1].[3].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[2].value.[0].modifier[2].arg[0].value", fallback: 0.5))
                }
            }
            .padding(.top, __designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[4].modifier[0].arg[1].value", fallback: 10))
            .padding(.horizontal)
            
            VStack {
                HStack {
                    if offset.width > 0 {
                        createUserCardLabel(title: __designTimeString("#2741.[1].[3].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: "LIKE"), degree: __designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value", fallback: -20), color: .green)
                        Spacer()
                    } else if offset.width < 0 {
                        Spacer()
                        createUserCardLabel(title: __designTimeString("#2741.[1].[3].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[0].value.[0].[1].[1].arg[0].value", fallback: "NOPE"), degree: __designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[0].value.[0].[1].[1].arg[1].value", fallback: 20), color: .red)
                    }
                }
                .padding(.horizontal, __designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[5].arg[0].value.[0].modifier[0].arg[1].value", fallback: 30))
                .padding(.top, __designTimeInteger("#2741.[1].[3].property.[0].[0].arg[0].value.[5].arg[0].value.[0].modifier[1].arg[1].value", fallback: 40))
                
                Spacer()
                
                createUserCardBottomInfo()
            }
        }
        .offset(offset)
        .scaleEffect(getScaleAmount())
        .rotationEffect(Angle(degrees: getRotationAmount()))
        .gesture(
            DragGesture()
                .onChanged { value in
                    withAnimation(.easeOut(duration: __designTimeFloat("#2741.[1].[3].property.[0].[0].modifier[3].arg[0].value.modifier[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 0.2))) {
                        self.offset = value.translation
                    }
                }
                .onEnded { value in
                    withAnimation(.easeOut(duration: __designTimeFloat("#2741.[1].[3].property.[0].[0].modifier[3].arg[0].value.modifier[1].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 0.2))) {
                        self.offset = .zero
                    }
                }
        )
    
#sourceLocation()
    }
}

import struct TanTan.UserCardView
#Preview {
    UserCardView(userCard: UserCard(name: "Jame", age: 23, place: "NY", zodiac: "Cancer", photos: ["User1", "User2"]))
}



