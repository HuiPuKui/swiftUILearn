//
//  MessageListScreen.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/22.
//

import SwiftUI

struct MessageListScreen: View {
    
    @StateObject var viewModel = MessageListViewModel()
    @State var searchText: String = ""
    @State var isEditing: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Message")
                        .font(.system(size: 25, weight: .bold))
                        .padding([.leading, .top], 15)
                    Spacer()
                }
                
                HStack(spacing: 0) {
                    TextField("Search Matches", text: $searchText)
                        .textInputAutocapitalization(.never)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(.gray.opacity(0.1))
                        .cornerRadius(8)
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20, weight: .semibold))
                                Spacer()
                            }
                            
                        )
                        .padding(.horizontal, 15)
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.25)) {
                                isEditing = true
                            }
                        }
                    
                    if isEditing {
                        Button {
                            withAnimation(.easeIn(duration: 0.25)) {
                                isEditing = false
                            }
                            
                            searchText = ""
                            endEditing(true)
                        } label: {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                    }
                }
                
                VStack {
                    ForEach(viewModel.messagePreviews.filter { searchText.isEmpty ? true : displayPreview($0) }, id: \.self) { preview in
                        NavigationLink(destination: ChatView(user: preview.user)) {
                            MessageListRowView(messagePreview: preview)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .animation(.easeIn(duration: 0.25))
                        .transition(.slide)
                    }
                }
                Spacer()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
    
    func displayPreview(_ preview: MessagePreview) -> Bool {
        if preview.user.name.contains(searchText) { return true }
        
        if preview.lastMessage.contains(searchText) { return true }
        return false
    }
}

#Preview {
    MessageListScreen()
}
