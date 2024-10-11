//
//  ContentView.swift
//  FirstApp
//
//  Created by HuiPuKui on 2024/10/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Hello World One")
            Text("Hello World")
            Text("Hello World Three")
        }
        
        HStack(alignment:.top) {
            Rectangle().frame(width: 40, height: 60)
            Rectangle().frame(width: 40, height: 70)
            Rectangle().frame(width: 40, height: 80)
        }
        
        ZStack(alignment: .leading) {
            Rectangle().frame(width: 60, height: 80)
                .foregroundColor(.red)
            Rectangle().frame(width: 50, height: 70)
                .foregroundColor(.blue)
            Rectangle().frame(width: 40, height: 60)
                .foregroundColor(.green)
        }
    }
}

#Preview {
    ContentView()
}
