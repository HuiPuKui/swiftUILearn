//
//  RoundButton.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/18.
//

import SwiftUI

enum ButtonType: String, CaseIterable, Identifiable {
    var id: RawValue {
        rawValue
    }
    case back = "gobackward"
    case no = "xmark"
    case heart = "heart.fill"
    case star = "star.fill"
}

struct RoundButton: View {
    
    var type: ButtonType
    
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(12)
                .colorButton(type: type)
                .background(.black.opacity(0.4))
        }
        .buttonStyle(PressScaleButton())
    }
}

struct PressScaleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct ColorButton: ViewModifier {
    var type: ButtonType
    func body(content: Content) -> some View {
        switch type {
        case .back:
            content
                .foregroundColor(.yellow)
        case .no:
            content
                .foregroundColor(.white)
                .padding(.horizontal, 30)
        case .heart:
            content
                .foregroundColor(.red)
                .padding(.horizontal, 30)
        case .star:
            content
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    VStack {
        ForEach(ButtonType.allCases) { type in
            RoundButton(type: type)
                .frame(height: 40)
        }
    }
    .background(Color.accentColor)
}
