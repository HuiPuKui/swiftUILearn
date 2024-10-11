//
//  ContentView.swift
//  CounterDemo
//
//  Created by HuiPuKui on 2024/10/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Counter = Counter()
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(counter.count)")
            
            Button("Button +") {
                counter.increaseByOne()
            }
            
            Button("Button -") {
                counter.decreaseByOne()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
