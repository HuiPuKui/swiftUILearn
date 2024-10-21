//
//  CircleAvator.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import SwiftUI

struct CircleAvator: View {
    var photo: String
    var size: Double
    var body: some View {
        Image(photo)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .cornerRadius(50)
            .overlay(
                Circle().stroke(.white, lineWidth: 5)
            )
            .shadow(radius: 1)
    }
}

#Preview {
    CircleAvator(photo: "User1", size: 100)
}
