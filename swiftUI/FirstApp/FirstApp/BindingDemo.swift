//
//  BindingDemo.swift
//  FirstApp
//
//  Created by HuiPuKui on 2024/10/12.
//

import SwiftUI

// @Binding 传递参数给子视图

struct BindingDemo: View {
    
    @State var bgColor: Color = .green
   
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea(.all)
            ButtonView(bgColor: $bgColor) // 这里是地址 $
        }
    }
}

struct ButtonView: View {
    
    @Binding var bgColor: Color
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button("Button") {
            bgColor = .orange
            buttonColor = .pink
        }
        .buttonStyle(.borderedProminent)
        .accentColor(buttonColor)
    }
}

#Preview {
    BindingDemo()
}
