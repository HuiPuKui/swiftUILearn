//
//  MessageListViewModel.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/22.
//

import Foundation

class MessageListViewModel: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviewMessages()
    }
    
    func loadPreviewMessages() {
        self.messagePreviews = MessagePreview.examples
    }
}
