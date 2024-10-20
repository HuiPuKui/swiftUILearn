//
//  ContentView.swift
//  MatchedGeometryEffectDemo
//
//  Created by HuiPuKui on 2024/10/20.
//

import SwiftUI

struct ContentView: View {
    @State var isClicked: Bool = false
    @Namespace var namespace
    var body: some View {
        VStack {
            if !isClicked {
                RoundedRectangle(cornerRadius: 25.0)
                    .matchedGeometryEffect(id: "roundedRectangle", in: namespace)
                    .frame(width: 100, height: 100)
            }
            Spacer()
            if isClicked {
                RoundedRectangle(cornerRadius: 25.0)
                    .matchedGeometryEffect(id: "roundedRectangle", in: namespace)
                    .frame(width: 300, height: 300)
            }
            
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
