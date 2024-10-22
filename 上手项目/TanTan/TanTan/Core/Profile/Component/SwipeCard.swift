//
//  SwipeCard.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/23.
//

import SwiftUI

struct SwipeCard: View {
    var body: some View {
        VStack(spacing: 0) {
            TabView {
                SingleSwipeCard(title: "Get TanTan Gold", description: "See who likes you & more!")
                
                SingleSwipeCard(title: "Get Matches Faster", description: "Boost your profile once a month!")
                
                SingleSwipeCard(title: "Increase Your Chances", description: "Boost your profile once a month!")
            }
            .tabViewStyle(PageTabViewStyle())
            
            Button {
                
            } label: {
                Text("MY TANTAN PLUS")
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.vertical, 20)
                    .padding(.horizontal, 50)
                    .background(.white)
                    .cornerRadius(30)
                    .shadow(color: .gray.opacity(0.2), radius: 10)
            }
            .padding(.bottom, 30)
        }
        
    }
    
    struct SingleSwipeCard: View {
        var title: String
        var description: String
        var body: some View {
            VStack(spacing: 10) {
                Spacer()
                
                Text(title)
                    .font(.system(size: 26, weight: .semibold))
                Text(description)
            }
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    SwipeCard()
}
