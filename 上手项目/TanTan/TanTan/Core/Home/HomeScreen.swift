//
//  HomeScreen.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/17.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var appState: AppState
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        if viewModel.hasMoreCard {
            ZStack {
                ForEach(viewModel.displayingCard.reversed()) { card in
                    CardContainerView(viewModel: viewModel, card: card)
                        .environmentObject(appState)
                }
            }
        } else {
            NoResultView()
        }
    }
}

#Preview {
    HomeScreen()
        .environmentObject(AppState())
}
