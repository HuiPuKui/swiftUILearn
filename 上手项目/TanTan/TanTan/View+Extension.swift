//
//  View+Extension.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/18.
//

import SwiftUI

extension View {
    func colorButton(type: ButtonType) -> some View {
        self.modifier(ColorButton(type: type))
    }
}
