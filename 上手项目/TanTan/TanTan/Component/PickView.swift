//
//  PickView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/20.
//

import SwiftUI

struct PickView: View {
    
    var card: UserCard
    var blur: Bool
    
    var body: some View {
        GeometryReader { proxy in
            if let photos = card.photos.first {
                ZStack(alignment: .bottomLeading) {
                    Image(photos)
                        .resizable()
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        .aspectRatio(contentMode: .fill)
                        .if(blur) {
                            $0.blur(radius: 25)
                        }
                    
                    Text("\(card.name)\n\(card.age)")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                        .if(blur) {
                            $0.redacted(reason: .placeholder)
                        }
                }
                .cornerRadius(16)
            }
        }
    }
}

#Preview {
//    let card =
    PickView(card: UserCard(name: "Jame", age: 23, place: "New Youk", zodiac: "Cancer", photos: ["User1"]), blur: true)
        .frame(width: 200, height: 300)
}
