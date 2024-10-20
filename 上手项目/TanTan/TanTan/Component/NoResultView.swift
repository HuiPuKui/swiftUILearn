//
//  NoResultView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/20.
//

import SwiftUI

struct NoResultView: View {
    var body: some View {
        VStack {
            Image("User1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(50)
                .overlay(
                    Circle().stroke(.white, lineWidth: 5)
                )
                .shadow(radius: 1)
                .padding(.bottom, 30)
            
            Text("Ops, There's no one left to swipe on! Whey ont try editing your filters?")
                .foregroundColor(.gray)
                .padding(.horizontal, 50)
                .padding(.bottom, 10)
            
            Button {
                
            } label: {
                Text("Edit Filter")
                    .frame(width: 300, height: 50)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
        }
        .frame(maxHeight: .infinity)
    }
}

#Preview {
    NoResultView()
}
