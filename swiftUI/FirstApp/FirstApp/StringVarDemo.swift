//
//  StringVarDemo.swift
//  FirstApp
//
//  Created by HuiPuKui on 2024/10/12.
//

import SwiftUI

struct StringVarDemo: View {
    // @State private var variableName: Type = InitialValue
    // @State @Binding 等等
    // private, public, internal(默认), var, let
    
    var title: String = "Hello, World!"
    @State private var count: Int = 1
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
            
            Button("Button +") {
                count += 1
            }
            
            Button("Button -") {
                count -= 1
            }
        }
    }
}

#Preview {
    StringVarDemo()
}
