//
//  HomeScreen.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/17.
//

import SwiftUI

struct HomeScreen: View {
    
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        CardContainerView(viewModel: viewModel)
    }
}

#Preview {
    HomeScreen()
}
