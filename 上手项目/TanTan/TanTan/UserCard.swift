//
//  UserCard.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/17.
//

import Foundation

struct UserCard: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let place: String
    let zodiac: String
    let photos: [String]
}
