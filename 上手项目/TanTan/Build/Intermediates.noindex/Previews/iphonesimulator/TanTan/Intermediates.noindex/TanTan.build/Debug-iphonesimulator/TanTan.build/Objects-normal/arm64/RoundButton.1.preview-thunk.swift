@_private(sourceFile: "RoundButton.swift") import TanTan
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ColorButton {
    @_dynamicReplacement(for: body(content:)) private func __preview__body(content: Content) -> some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/RoundButton.swift", line: 50)
        let isFullScreen = appState.isFullScreen
        switch type {
        case .back:
            content
                .foregroundColor(.yellow)
                .background(.black.opacity(__designTimeFloat("#62472.[4].[2].[1].[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)))
        case .no:
            content
                .foregroundColor(.white)
                .padding(.horizontal, __designTimeInteger("#62472.[4].[2].[1].[1].[0].modifier[1].arg[1].value", fallback: 30))
                .background(isFullScreen ? .yellow : .black.opacity(__designTimeFloat("#62472.[4].[2].[1].[1].[0].modifier[2].arg[0].value.else.modifier[0].arg[0].value", fallback: 0.4)))
        case .heart:
            content
                .foregroundColor(isFullScreen ? .white : .red)
                .padding(.horizontal, __designTimeInteger("#62472.[4].[2].[1].[2].[0].modifier[1].arg[1].value", fallback: 30))
                .background(isFullScreen ? .pink : .black.opacity(__designTimeFloat("#62472.[4].[2].[1].[2].[0].modifier[2].arg[0].value.else.modifier[0].arg[0].value", fallback: 0.4)))
        case .star:
            content
                .foregroundColor(isFullScreen ? .white : .blue)
                .background(isFullScreen ? .blue : .black.opacity(__designTimeFloat("#62472.[4].[2].[1].[3].[0].modifier[1].arg[0].value.else.modifier[0].arg[0].value", fallback: 0.4)))
        }
    
#sourceLocation()
    }
}

extension PressScaleButton {
    @_dynamicReplacement(for: makeBody(configuration:)) private func __preview__makeBody(configuration: Configuration) -> some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/RoundButton.swift", line: 40)
        configuration.label
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? __designTimeFloat("#62472.[3].[0].[0].modifier[1].arg[0].value.then", fallback: 0.7) : __designTimeFloat("#62472.[3].[0].[0].modifier[1].arg[0].value.else", fallback: 1.0))
    
#sourceLocation()
    }
}

extension RoundButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/RoundButton.swift", line: 25)
        Button {
            action?()
        } label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(__designTimeInteger("#62472.[2].[2].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 12))
                .colorButton(type: type)
        }
        .buttonStyle(PressScaleButton())
    
#sourceLocation()
    }
}

extension ButtonType {
    @_dynamicReplacement(for: id) private var __preview__id: RawValue {
        #sourceLocation(file: "/Users/huipukui/Desktop/All/iOSLearn/swiftUILearn/上手项目/TanTan/TanTan/Component/RoundButton.swift", line: 12)
        rawValue
    
#sourceLocation()
    }
}

import enum TanTan.ButtonType
import struct TanTan.RoundButton
import struct TanTan.PressScaleButton
import struct TanTan.ColorButton
#Preview {
    VStack {
        ForEach(ButtonType.allCases) { type in
            RoundButton(type: type)
                .frame(height: 40)
        }
    }
    .background(Color.accentColor)
    .environmentObject(AppState(isFullScreen: true))
}



