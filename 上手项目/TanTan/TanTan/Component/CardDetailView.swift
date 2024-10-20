//
//  CardDetailView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/20.
//

import SwiftUI

struct CardDetailView: View {
    @EnvironmentObject var appState: AppState
    var card: UserCard
    var body: some View {
        let screen = UIScreen.main.bounds
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                UserCardView(userCard: card)
                    .environmentObject(appState)
                    .frame(width: screen.width, height: screen.height * 0.7)
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(card.name)
                                .font(.system(size: 32, weight: .bold))
                            Text(String(card.age))
                                .font(.system(size: 28, weight: .light))
                            Spacer()
                        }
                        
                        Text(card.place)
                            .font(.system(size: 18, weight: .light))
                            .foregroundColor(.gray)
                    }
                    .padding([.horizontal, .top], 20)
                    
                    Button {
                        appState.isFullScreen = false
                    } label: {
                        Image(systemName: "arrow.up.circle.fill")
                            .font(.system(size: 40))
                            .background(.white)
                            .clipShape(Circle())
                    }
                    .padding(.trailing, 30)
                    .offset(y: -40)
                }
                Spacer(minLength: 20)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20)
                
                Spacer(minLength: 20)
                VStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        VStack(spacing: 18) {
                            Text("SHARE \(card.name.uppercased())'S PROFILE")
                                .font(.system(size: 16, weight: .medium))
                            
                            Text("SEE WHAT A FRIEND THINKS")
                                .font(.system(size: 14, weight: .medium))
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        Text("REPORT \(card.name.uppercased())")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(.black)
                            .opacity(0.75)
                    }
                }
                
                Spacer(minLength: 200)
            }
        }
        
    }
}

#Preview {
    CardDetailView(card: .init(name: "Jame", age: 23, place: "New Youk", zodiac: "Cancer", photos: ["User1"]))
        .environmentObject(AppState(isFullScreen: true))
}
