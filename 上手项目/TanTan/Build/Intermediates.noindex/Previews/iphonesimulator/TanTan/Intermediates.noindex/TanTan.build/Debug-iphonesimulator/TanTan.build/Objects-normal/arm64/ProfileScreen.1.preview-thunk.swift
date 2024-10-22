@_private(sourceFile: "ProfileScreen.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import PhotosUI
import SwiftUI

extension ProfileScreen.ImageFromLocal {
typealias CustomButton = ProfileScreen.CustomButton
typealias ImageFromLocal = ProfileScreen.ImageFromLocal

    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Profile/ProfileScreen.swift", line: 109)
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: __designTimeInteger("#11652.[2].[4].[1].property.[0].[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#11652.[2].[4].[1].property.[0].[0].modifier[2].arg[1].value", fallback: 100))
                .cornerRadius(__designTimeInteger("#11652.[2].[4].[1].property.[0].[0].modifier[3].arg[0].value", fallback: 50))
                .overlay(
                    Circle().stroke(.white, lineWidth: __designTimeInteger("#11652.[2].[4].[1].property.[0].[0].modifier[4].arg[0].value.modifier[0].arg[1].value", fallback: 5))
                )
                .shadow(radius: __designTimeInteger("#11652.[2].[4].[1].property.[0].[0].modifier[5].arg[0].value", fallback: 1))
        
#sourceLocation()
    }
}

extension ProfileScreen.CustomButton {
typealias CustomButton = ProfileScreen.CustomButton
typealias ImageFromLocal = ProfileScreen.ImageFromLocal

    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Profile/ProfileScreen.swift", line: 86)
            VStack(spacing: __designTimeInteger("#11652.[2].[3].[3].property.[0].[0].arg[0].value", fallback: 10)) {
                Button {
                    
                } label: {
                    Image(systemName: icon)
                        .foregroundColor(isCenter ? .white : .gray)
                        .font(.system(size: isCenter ? __designTimeInteger("#11652.[2].[3].[3].property.[0].[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.then", fallback: 30) : __designTimeInteger("#11652.[2].[3].[3].property.[0].[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.else", fallback: 26)))
                        .padding(isCenter ? __designTimeInteger("#11652.[2].[3].[3].property.[0].[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.then", fallback: 20) : __designTimeInteger("#11652.[2].[3].[3].property.[0].[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.else", fallback: 10))
                        .background(isCenter ? Color.accentColor : .white)
                        .clipShape(Circle())
                        .shadow(radius: __designTimeInteger("#11652.[2].[3].[3].property.[0].[0].arg[1].value.[0].arg[1].value.[0].modifier[5].arg[0].value", fallback: 6))
                }
                
                Text(title)
                    .font(.system(size: __designTimeInteger("#11652.[2].[3].[3].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 14), weight: .medium))
                    .foregroundColor(.gray.opacity(__designTimeFloat("#11652.[2].[3].[3].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.6)))
            }
        
#sourceLocation()
    }
}

extension ProfileScreen {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Profile/ProfileScreen.swift", line: 15)
        VStack(spacing: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[0].value", fallback: 0)) {
            ZStack(alignment: .topTrailing) {
                if let uiImage = vm.selectedImage {
                    ImageFromLocal(uiImage: uiImage)
                } else {
                    ImageFromLocal(uiImage: UIImage(named: user.photo) ?? UIImage())
                }

                PhotosPicker(selection: $vm.imageSelection, matching: .images) {
                    Image(systemName: __designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value", fallback: "pencil"))
                        .font(.system(size: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 18), weight: .heavy))
                        .foregroundColor(.gray.opacity(__designTimeFloat("#11652.[2].[2].property.[0].[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)))
                        .frame(width: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].modifier[2].arg[0].value", fallback: 32), height: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].modifier[2].arg[1].value", fallback: 32))
                        .background(.white)
                        .clipShape(Circle())
                        .padding(.vertical, __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].modifier[5].arg[1].value", fallback: 10))
                        .offset(x: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].modifier[6].arg[0].value", fallback: 10), y: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].modifier[6].arg[1].value", fallback: -10))
                }
            }
            .padding()
            
            Text(user.name)
                .font(.system(size: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 20), weight: .medium))
            
            HStack(alignment: .top) {
                Spacer()
                CustomButton(icon: __designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[1].arg[0].value", fallback: "gearshape.fill"), title: __designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[1].arg[1].value", fallback: "SETTINGS"), isCenter: __designTimeBoolean("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[1].arg[2].value", fallback: false))
                Spacer()
                CustomButton(icon: __designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[3].arg[0].value", fallback: "camera.fill"), title: __designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[3].arg[1].value", fallback: "ADD MEDIA"), isCenter: __designTimeBoolean("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[3].arg[2].value", fallback: true))
                Spacer()
                CustomButton(icon: __designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[5].arg[0].value", fallback: "shield.fill"), title: __designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[5].arg[1].value", fallback: "SAFETY"), isCenter: __designTimeBoolean("#11652.[2].[2].property.[0].[0].arg[1].value.[2].arg[1].value.[5].arg[2].value", fallback: false))
                Spacer()
            }
            .padding(.top, __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[2].modifier[0].arg[1].value", fallback: 20))
            
            HStack {
                Text(__designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[3].arg[0].value.[0].arg[0].value", fallback: "Photo Tip: Make waves with a beach photo and get more likes"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(__designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[3].arg[0].value.[0].modifier[1].arg[0].value", fallback: 3))
                    .foregroundColor(.white)
                    .font(.system(size: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[3].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 14)))
                
                Button {
                    
                } label: {
                    Image(systemName: __designTimeString("#11652.[2].[2].property.[0].[0].arg[1].value.[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "plus"))
                        .font(.system(size: __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[3].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 12), weight: .heavy))
                        .foregroundColor(Color.accentColor)
                        .padding(__designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[3].arg[0].value.[1].arg[1].value.[0].modifier[2].arg[0].value", fallback: 6))
                }
                .background(.white)
                .clipShape(Circle())
            }
            .padding()
            .background(Color.accentColor.opacity(__designTimeFloat("#11652.[2].[2].property.[0].[0].arg[1].value.[3].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)))
            .cornerRadius(__designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[3].modifier[2].arg[0].value", fallback: 12))
            .padding()
            
            ZStack {
                Color.gray.opacity(__designTimeFloat("#11652.[2].[2].property.[0].[0].arg[1].value.[4].arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.15))
                SwipeCard()
            }
            .padding(.top, __designTimeInteger("#11652.[2].[2].property.[0].[0].arg[1].value.[4].modifier[0].arg[1].value", fallback: 20))
        }
    
#sourceLocation()
    }
}

import struct TanTan.ProfileScreen
#Preview {
    ProfileScreen(user: User.Me)
}



