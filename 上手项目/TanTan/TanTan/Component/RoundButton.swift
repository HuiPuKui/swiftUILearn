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
    var action: (() -> Void)?
    var body: some View {
        Button {
            action?()
        } label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(12)
                .colorButton(type: type)
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
    @EnvironmentObject var appState: AppState
    var type: ButtonType
    func body(content: Content) -> some View {
        let isTabBarHidden = appState.isTabBarHidden
        switch type {
        case .back:
            content
                .foregroundColor(.yellow)
                .background(.black.opacity(0.4))
        case .no:
            content
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .background(isTabBarHidden ? .yellow : .black.opacity(0.4))
        case .heart:
            content
                .foregroundColor(isTabBarHidden ? .white : .red)
                .padding(.horizontal, 30)
                .background(isTabBarHidden ? .pink : .black.opacity(0.4))
        case .star:
            content
                .foregroundColor(isTabBarHidden ? .white : .blue)
                .background(isTabBarHidden ? .blue : .black.opacity(0.4))
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
    .environmentObject(AppState(isTabBarHidden: true))
}
