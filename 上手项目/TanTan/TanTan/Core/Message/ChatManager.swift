//
//  ChatManager.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/21.
//

import Foundation
import Combine
import UIKit

class ChatManager: ObservableObject {
    @Published var messages: [Message] = []
    @Published var keyboardIsShowing: Bool = false
    var keyboardPublisher: AnyCancellable? = nil
    var user: User
    
    init(user: User) {
        self.user = user
        loadMessages()
        setUpPublishers()
    }
    
    func setUpPublishers() {
        keyboardPublisher = Publishers.Merge(
            NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
                .map{ _ in true },
            NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
                .map{ _ in false }
        )
        .subscribe(on: DispatchQueue.main)
        .assign(to: \.keyboardIsShowing, on: self)
    }
    
    func sendMessage(_ message: Message) {
        messages.append(message)
    }
    
    // mock network request
    func loadMessages() {
        messages = [Message(content: "1"), Message(content: "2", user: User.Others), Message(content: "3"), Message(content: "4", user: User.Others), Message(content: "5"), Message(content: "6", user: User.Others), Message(content: "7"), Message(content: "8", user: User.Others), Message(content: "9"), Message(content: "10", user: User.Others)]
    }
}
