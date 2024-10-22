//
//  LiveScreen.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/23.
//

import SwiftUI

struct LiveScreen: View {
    
    @StateObject var viewModel = LiveViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Live")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding([.leading, .top], 15)
                Spacer()
            }
            
            HStack {
                ForEach(LiveTitle.allCases) { tab in
                    Button {
                        viewModel.selectedTab = tab
                    } label: {
                        Text(tab.rawValue)
                            .font(.system(size: 14))
                            .padding(.all, 10)
                            .foregroundColor(viewModel.selectedTab == tab ? .white : .gray)
                            .background(viewModel.selectedTab == tab ? Color.accentColor : .white)
                            .cornerRadius(20)
                    }
                }
                
                Spacer()
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                switchTab()
            }
        }
    }
    
    @ViewBuilder
    func switchTab() -> some View {
        switch viewModel.selectedTab {
        case .Feature:
            LazyVGrid(
                columns: [GridItem(.flexible()), GridItem(.flexible())],
                alignment: .center,
                spacing: 10.0,
                pinnedViews: [],
                content: {
                    ForEach(viewModel.featuredCard) { card in
                        PickView(card: card, blur: false)
                            .frame(height: 250)
                    }
                }
            )
            .padding(.horizontal, 10)
            
        case .Nearby:
            LazyVGrid(
                columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())],
                alignment: .center,
                spacing: 10.0,
                pinnedViews: [],
                content: {
                    ForEach(viewModel.featuredCard) { card in
                        PickView(card: card, blur: false)
                            .frame(height: 150)
                    }
                }
            )
            .padding(.horizontal, 10)
        }
    }
}

enum LiveTitle: String, CaseIterable, Identifiable {
    var id: RawValue { rawValue }
    case Feature
    case Nearby
}

#Preview {
    LiveScreen()
}
