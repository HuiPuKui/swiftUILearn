//
//  CardContainerView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/20.
//

import SwiftUI

struct CardContainerView: View {
    
    @EnvironmentObject var appState: AppState
    @ObservedObject var viewModel: HomeViewModel
    @Namespace var namespace
    var card: UserCard
    var body: some View {
        if appState.isFullScreen {
            CardDetailView(namespace: namespace, card: card)
                .background(.white)
                .environmentObject(appState)
        } else {
            ZStack(alignment: .bottom) {
                ForEach(viewModel.displayingCard.reversed()) { card in
                    UserCardView(userCard: card, swipeAction: viewModel.nextUserCard)
                        .matchedGeometryEffect(id: card.id, in: namespace)
                        .environmentObject(appState)
                }
                if viewModel.hasMoreCard {
                    HStack {
                        ForEach(ButtonType.allCases) { type in
                            RoundButton(type: type, action: {
                                switch type {
                                case .back:
                                    debugPrint("Roll Back")
                                case .no:
                                    viewModel.nextUserCard()
                                case .heart:
                                    viewModel.nextUserCard()
                                case .star:
                                    debugPrint("Super Like")
                                }
                            })
                                .frame(height: 45)
                        }
                    }
                    .padding(.bottom, 15)
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
        }
        
    }
}

#Preview {
    CardContainerView(viewModel: HomeViewModel(), card: UserCard(name: "Jame", age: 23, place: "NY", zodiac: "Cancer", photos: ["User1", "User2"]))
        .environmentObject(AppState())
}
