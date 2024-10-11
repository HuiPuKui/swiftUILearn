//
//  StateDemo.swift
//  FirstApp
//
//  Created by HuiPuKui on 2024/10/12.
//

import SwiftUI

struct StateDemo: View {
    
    @State var count: Int = 0
    @State var title: String = "Empty String"
    @State var backgroundColor: Color = .green
    @State var pad: CGFloat = 10
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            VStack(spacing: pad) {
                Text("\(count)")
                Text(title)
                Button("Button +", action: {
                    count += 1
                    title = "Hello World"
                    backgroundColor = .purple
                    pad = 20
                })
                
                Button("Button -", action: {
                    count -= 1
                    title = "World Hello"
                    backgroundColor = .red
                    pad = 5
                })
            }
        }
        
    }
}

#Preview {
    StateDemo()
}
