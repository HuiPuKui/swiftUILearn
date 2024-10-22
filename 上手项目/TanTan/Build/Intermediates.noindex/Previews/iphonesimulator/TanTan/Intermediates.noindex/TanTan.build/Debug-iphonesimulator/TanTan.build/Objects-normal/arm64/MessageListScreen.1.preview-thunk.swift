@_private(sourceFile: "MessageListScreen.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension MessageListScreen {
    @_dynamicReplacement(for: displayPreview(_:)) private func __preview__displayPreview(_ preview: MessagePreview) -> Bool {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/MessageListScreen.swift", line: 86)
        if preview.user.name.contains(searchText) { return __designTimeBoolean("#5254.[1].[5].[0].[0].[0]", fallback: true) }
        
        if preview.lastMessage.contains(searchText) { return __designTimeBoolean("#5254.[1].[5].[1].[0].[0]", fallback: true) }
        return __designTimeBoolean("#5254.[1].[5].[2]", fallback: false)
    
#sourceLocation()
    }
}

extension MessageListScreen {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/MessageListScreen.swift", line: 17)
        NavigationStack {
            VStack {
                HStack {
                    Text(__designTimeString("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Message"))
                        .font(.system(size: __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25), weight: .bold))
                        .padding([.leading, .top], __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 15))
                    Spacer()
                }
                
                HStack(spacing: __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 0)) {
                    TextField(__designTimeString("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Search Matches"), text: $searchText)
                        .textInputAutocapitalization(.never)
                        .padding(__designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value", fallback: 7))
                        .padding(.horizontal, __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[2].arg[1].value", fallback: 25))
                        .background(.gray.opacity(__designTimeFloat("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)))
                        .cornerRadius(__designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[0].value", fallback: 8))
                        .overlay(
                            HStack {
                                Image(systemName: __designTimeString("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[5].arg[0].value.arg[0].value.[0].arg[0].value", fallback: "magnifyingglass"))
                                    .foregroundColor(.gray)
                                    .font(.system(size: __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[5].arg[0].value.arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 20), weight: .semibold))
                                Spacer()
                            }
                            
                        )
                        .padding(.horizontal, __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[6].arg[1].value", fallback: 15))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: __designTimeFloat("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[7].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 0.25))) {
                                isEditing = __designTimeBoolean("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[7].arg[0].value.[0].arg[1].value.[0].[0]", fallback: true)
                            }
                            appState.isTabBarHidden = __designTimeBoolean("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[7].arg[0].value.[1].[0]", fallback: true)
                        }
                    
                    if isEditing {
                        Button {
                            withAnimation(.easeIn(duration: __designTimeFloat("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 0.25))) {
                                isEditing = __designTimeBoolean("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.[0].arg[1].value.[0].[0]", fallback: false)
                            }
                            appState.isTabBarHidden = __designTimeBoolean("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.[1].[0]", fallback: false)
                            searchText = __designTimeString("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.[2].[0]", fallback: "")
                            endEditing(__designTimeBoolean("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.[3].arg[0].value", fallback: true))
                        } label: {
                            Text(__designTimeString("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[1].value.[0].arg[0].value", fallback: "Cancel"))
                        }
                        .padding(.trailing, __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].modifier[0].arg[1].value", fallback: 10))
                        .transition(.move(edge: .trailing))
                    }
                }
                
                VStack {
                    ForEach(viewModel.messagePreviews.filter { searchText.isEmpty ? __designTimeBoolean("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.modifier[0].arg[0].value.[0].then", fallback: true) : displayPreview($0) }, id: \.self) { preview in
                        NavigationLink(destination: ChatView(user: preview.user).environmentObject(appState)) {
                            MessageListRowView(messagePreview: preview)
                                .padding(.horizontal, __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 10))
                                .padding(.vertical, __designTimeInteger("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 5))
                        }
                        .buttonStyle(PlainButtonStyle())
                        .animation(.easeIn(duration: __designTimeFloat("#5254.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 0.25)), value: viewModel.messagePreviews.count)
                        .transition(.slide)
                    }
                }
                Spacer()
            }
            .navigationTitle(__designTimeString("#5254.[1].[4].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: ""))
            .navigationBarHidden(__designTimeBoolean("#5254.[1].[4].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: true))
        }
    
#sourceLocation()
    }
}

import struct TanTan.MessageListScreen
#Preview {
    MessageListScreen()
        .environmentObject(AppState())
}



