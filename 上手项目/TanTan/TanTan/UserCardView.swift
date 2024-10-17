//
//  UserCardView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/17.
//

import SwiftUI

struct UserCardView: View {
    
    var userCard: UserCard
    @State var imageIndex = 0
    
    var body: some View {
        GeometryReader { proxy in
            let frameWidth = proxy.size.width
            let frameHeight = proxy.size.height
            
            Image(userCard.photos[imageIndex])
                .resizable()
                .frame(width: frameWidth, height: frameHeight)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
        }
        
    }
}

#Preview {
    UserCardView(userCard: UserCard(name: "Jame", age: 23, place: "NY", zodiac: "Cancer", photos: ["User1", "User2"]))
}
