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
            CircleAvator(photo: "User1", size: 100)
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
