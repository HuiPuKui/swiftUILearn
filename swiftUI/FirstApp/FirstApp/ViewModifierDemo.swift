//
//  ViewModifierDemo.swift
//  FirstApp
//
//  Created by HuiPuKui on 2024/10/12.
//

import SwiftUI

struct ViewModifierDemo: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
    //            .bold()
                .font(.title) // 大小
                .foregroundColor(.white) // 字色
                .padding()
                .background(.black) // 底色
                .kerning(5) // 间距
                .cornerRadius(10) // 圆角
            
            Button("Tap Me") {
                
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button("Tap Me") {
                
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ViewModifierDemo()
}
