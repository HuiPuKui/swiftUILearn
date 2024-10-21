//
//  MessageListRowView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/22.
//

import SwiftUI

struct MessageListRowView: View {
    
    var messagePreview: MessagePreview
    
    var body: some View {
        HStack(spacing: 15) {
            CircleAvator(photo: messagePreview.user.photo, size: 80)
            VStack(alignment: .leading, spacing: 5) {
                Text(messagePreview.user.name)
                    .font(.system(size: 20, weight: .semibold))
                Text(messagePreview.lastMessage)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            
            Spacer()
        }
    }
}

#Preview {
    VStack {
        MessageListRowView(messagePreview: MessagePreview.examples[0])
        MessageListRowView(messagePreview: MessagePreview.examples[1])
    }
}
