//
//  NoItemsView.swift
//  TodoList
//
//  Created by HuiPuKui on 2024/10/15.
//

import SwiftUI

struct NoItemsView: View {
    
    @State private var animated: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("No Items")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Please add items")
                
                NavigationLink(destination: AddView(), label: {
                    Text("Add Here")
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animated ? Color.accentColor : Color.red)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animated ? 50 : 30)
            }
            .padding(40)
            .onAppear(perform: animation)
        }
    }
    
    func animation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation.easeInOut(duration: 1)
                    .repeatForever()
            ) {
                animated.toggle()
            }
        }
    }
}

#Preview {
    NoItemsView()
}
