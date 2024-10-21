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
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Core/Message/MessageListScreen.swift", line: 17)
        NavigationStack {
            VStack {
                HStack {
                    Text(__designTimeString("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Message"))
                        .font(.system(size: __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25), weight: .bold))
                        .padding([.leading, .top], __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 15))
                    Spacer()
                }
                
                HStack(spacing: __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 0)) {
                    TextField(__designTimeString("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Search Matches"), text: $searchText)
                        .textInputAutocapitalization(.never)
                        .padding(__designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value", fallback: 7))
                        .padding(.horizontal, __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[2].arg[1].value", fallback: 25))
                        .background(.gray.opacity(__designTimeFloat("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)))
                        .cornerRadius(__designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[0].value", fallback: 8))
                        .overlay(
                            HStack {
                                Image(systemName: __designTimeString("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[5].arg[0].value.arg[0].value.[0].arg[0].value", fallback: "magnifyingglass"))
                                    .foregroundColor(.gray)
                                    .font(.system(size: __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[5].arg[0].value.arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 20), weight: .semibold))
                                Spacer()
                            }
                            
                        )
                        .padding(.horizontal, __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[6].arg[1].value", fallback: 15))
                        .onTapGesture {
                            isEditing = __designTimeBoolean("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[7].arg[0].value.[0].[0]", fallback: true)
                        }
                    
                    if isEditing {
                        Button {
                            isEditing = __designTimeBoolean("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.[0].[0]", fallback: false)
                            searchText = __designTimeString("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.[1].[0]", fallback: "")
                            endEditing(__designTimeBoolean("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.[2].arg[0].value", fallback: true))
                        } label: {
                            Text(__designTimeString("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[1].value.[0].arg[0].value", fallback: "Cancel"))
                        }
                        .padding(.trailing, __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].modifier[0].arg[1].value", fallback: 10))
                        .transition(.move(edge: .trailing))
                    }
                }
                
                VStack {
                    ForEach(viewModel.messagePreviews, id: \.self) { preview in
                        NavigationLink(destination: ChatView(user: preview.user)) {
                            MessageListRowView(messagePreview: preview)
                                .padding(.horizontal, __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 10))
                                .padding(.vertical, __designTimeInteger("#134243.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 5))
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                Spacer()
            }
            .navigationTitle(__designTimeString("#134243.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: ""))
            .navigationBarHidden(__designTimeBoolean("#134243.[1].[3].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: true))
        }
    
#sourceLocation()
    }
}

import struct TanTan.MessageListScreen
#Preview {
    MessageListScreen()
}



