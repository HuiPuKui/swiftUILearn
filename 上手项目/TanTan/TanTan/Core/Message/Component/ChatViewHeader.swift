//
//  ChatViewHeader.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import SwiftUI

struct ChatViewHeader: View {
    @Environment(\.dismiss) var dismiss
    var name: String
    var photo: String
    var videoAction: () -> Void
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.top)
                .shadow(radius: 3)
            
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.gray)
                        .font(.system(size: 28, weight: .semibold))
                }
                
                Spacer()
                
                VStack(spacing: 5) {
                    CircleAvator(photo: photo, size: 50)
                    Text(name)
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                }
                
                Spacer()
                
                Button {
                    videoAction()
                } label: {
                    Image(systemName: "video.fill")
                        .font(.system(size: 25, weight: .bold))
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
        .frame(height: 50)
    }
}

struct ChatViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        let user = User.Others
        ChatViewHeader(name: user.name, photo: user.photo) {
            
        }
    }
}
