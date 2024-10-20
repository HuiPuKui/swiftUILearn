//
//  PickListView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/20.
//

import SwiftUI

struct PickListView: View {
    
    var cards: [UserCard]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                Text("Discover the people you like. Updated daily.")
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .medium))
                    .padding(.vertical, 10)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: 10.0, pinnedViews: []) {
                    ForEach(cards) { card in
                        PickView(card: card, blur: true)
                            .frame(height: 240)
                    }
                }
                .padding(.horizontal, 10)
            }
            
            Button {
                
            } label: {
                Text("Unlock daily picks")
                    .font(.system(size: 18))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 15)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            .padding(15)
        }
        
    }
}

#Preview {
    PickListView(cards: HomeViewModel().displayingCard)
}
