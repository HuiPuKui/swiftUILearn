//
//  MessageView.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import SwiftUI

struct MessageView: View {
    var message: Message
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
            }
            
            Text(message.content)
                .padding(10)
                .foregroundColor(.white)
                .background(message.isCurrentUser ? Color.accentColor : .gray.opacity(0.7))
                
                .cornerRadius(10)
            
            if !message.isCurrentUser {
                Spacer()
            }
        }
        .padding()
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        let messageSend = Message.messageSent
        let messageReceived = Message.messageReceived
        VStack {
            MessageView(message: messageSend)
            MessageView(message: messageReceived)
        }
    }
}
