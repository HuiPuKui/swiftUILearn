//
//  ProfileScreen.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/22.
//

import SwiftUI
import PhotosUI

struct ProfileScreen: View {
    @StateObject var vm: ProfileViewModel = ProfileViewModel()
    var user: User
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .topTrailing) {
                if let uiImage = vm.selectedImage {
                    ImageFromLocal(uiImage: uiImage)
                } else {
                    ImageFromLocal(uiImage: UIImage(named: user.photo) ?? UIImage())
                }

                PhotosPicker(selection: $vm.imageSelection, matching: .images) {
                    Image(systemName: "pencil")
                        .font(.system(size: 18, weight: .heavy))
                        .foregroundColor(.gray.opacity(0.5))
                        .frame(width: 32, height: 32)
                        .background(.white)
                        .clipShape(Circle())
                        .padding(.vertical, 10)
                        .offset(x: 10, y: -10)
                }
            }
            .padding()
            
            Text(user.name)
                .font(.system(size: 20, weight: .medium))
            
            HStack(alignment: .top) {
                Spacer()
                CustomButton(icon: "gearshape.fill", title: "SETTINGS", isCenter: false)
                Spacer()
                CustomButton(icon: "camera.fill", title: "ADD MEDIA", isCenter: true)
                Spacer()
                CustomButton(icon: "shield.fill", title: "SAFETY", isCenter: false)
                Spacer()
            }
            .padding(.top, 20)
            
            HStack {
                Text("Photo Tip: Make waves with a beach photo and get more likes")
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 12, weight: .heavy))
                        .foregroundColor(Color.accentColor)
                        .padding(6)
                }
                .background(.white)
                .clipShape(Circle())
            }
            .padding()
            .background(Color.accentColor.opacity(0.5))
            .cornerRadius(12)
            .padding()
            
            Spacer()
        }
    }
    
    struct CustomButton: View {
        var icon: String
        var title: String
        var isCenter: Bool
        var body: some View {
            VStack(spacing: 10) {
                Button {
                    
                } label: {
                    Image(systemName: icon)
                        .foregroundColor(isCenter ? .white : .gray)
                        .font(.system(size: isCenter ? 30 : 26))
                        .padding(isCenter ? 20 : 10)
                        .background(isCenter ? Color.accentColor : .white)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                }
                
                Text(title)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.gray.opacity(0.6))
            }
        }
    }
    
    struct ImageFromLocal: View {
        var uiImage: UIImage
        var body: some View {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(50)
                .overlay(
                    Circle().stroke(.white, lineWidth: 5)
                )
                .shadow(radius: 1)
        }
    }
}

#Preview {
    ProfileScreen(user: User.Me)
}
