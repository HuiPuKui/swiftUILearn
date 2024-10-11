//
//  ButtonDemo.swift
//  FirstApp
//
//  Created by HuiPuKui on 2024/10/12.
//

import SwiftUI

struct ButtonDemo: View {
    
    @State var title: String = "Hello World"
    
    var body: some View {
        VStack {
            Text(title)
            
            Button("Tap Me", action: {
                title = "World Hello"
            })
            
            Button(action: {
                title = "World Hello #2"
            }, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                title = "World Hello #2"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
        }
    }
}

#Preview {
    ButtonDemo()
}
