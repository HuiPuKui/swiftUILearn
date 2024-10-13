//
//  ContentView.swift
//  NavigationStackDemo
//
//  Created by HuiPuKui on 2024/10/13.
//

import SwiftUI

struct ContentView: View {
    
    private var bgColors: [Color] = [.red, .yellow, .green, .blue]
    private var systemImages: [String] = ["trash", "cloud", "bolt"]
    
    var body: some View {
        NavigationStack {
            List(bgColors, id: \.self) { bgColor in
                NavigationLink(value: bgColor) {
                    Text(bgColor.description)
                }
            }
            .listStyle(.plain)
            List(systemImages, id: \.self) { image in
                NavigationLink(value: image) {
                    Text(image.description)
                }
            }
            .listStyle(.plain)
            .navigationDestination(for: Color.self) { color in
                color.frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .navigationDestination(for: String.self) { image in
                Image(systemName: image)
                    .font(.system(size: 100))
            }
            .navigationTitle("Color")
        }
    }
}

//#Preview {
//    ContentView()
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
