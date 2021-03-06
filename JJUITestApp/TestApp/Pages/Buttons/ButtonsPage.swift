//
//  ButtonsPage.swift
//  JJUITestApp
//
//  Created by Juan Andres Vasquez Ferrer on 28-12-21.
//

import SwiftUI
import JKUI

struct ButtonsPage: View {
    var config = ButtonConfiguration(size: .large, type: .primary)
    @State var isLoading = false
    @State var buttonState = ButtonState.idle
    @State var disableState = ButtonState.disabled
    
    var body: some View {
        
            VStack(spacing: 20) {
                
                HStack {
                    Toggle(isOn: $isLoading) {
                        Text("Show Loading")
                    }.onChange(of: isLoading) { newValue in
                        let newState: ButtonState = isLoading ? .loading : .idle
                        buttonState = newState
                    }
                }
                .padding()
                
                HStack(spacing: 5) {
                    Spacer()
                    MainButton(
                        text: "Primary",
                        icon: nil,
                        configuration: config,
                        state: buttonState
                    ) { }
                    
                    Spacer()
                    
                    MainButton(
                        text: "Secondary",
                        icon: nil,
                        configuration: .init(size: .large, type: .secondary),
                        state: buttonState
                    ) {}
                    
                    Spacer()

                    MainButton(
                        text: "Disabled",
                        icon: nil,
                        configuration: .init(size: .large, type: .secondary),
                        state: disableState
                    ) {}
                    
                    Spacer()
                }
                
                HStack(spacing: 5) {
                    MainButton(
                        text: "Icon Left",
                        icon: AppButtonIcon(position: .left, name: "star.fill"),
                        configuration: .init(size: .large, type: .primary),
                        state: buttonState
                    ) { }
                    
                    MainButton(
                        text: "Icon Right",
                        icon: AppButtonIcon(position: .right, name: "star.fill"),
                        configuration: .init(size: .large, type: .secondary),
                        state: buttonState
                    ) { }
                }
                
                HStack(spacing: 5) {
                    Spacer()
                    MainButton(
                        text: "Primary",
                        icon: nil,
                        configuration: .init(size: .medium, type: .primary),
                        state: buttonState
                    ) {}
                    
                    MainButton(
                        text: "Secondary",
                        icon: nil,
                        configuration: .init(size: .medium, type: .secondary),
                        state: buttonState
                    ) {}
                    
                    MainButton(
                        text: "Disabled",
                        icon: nil,
                        configuration: .init(size: .medium, type: .secondary),
                        state: disableState
                    ) {}
                    
                    Spacer()
                }
                
                HStack(spacing: 20) {
                    Spacer()
                    MainButton(
                        text: "Primary",
                        icon: nil,
                        configuration: .init(size: .small, type: .primary),
                        state: buttonState
                    ) {}
                    
                    MainButton(
                        text: "Secondary",
                        icon: nil,
                        configuration: .init(size: .small, type: .secondary),
                        state: buttonState
                    ) {}
                    
                    MainButton(
                        text: "Disabled",
                        icon: nil,
                        configuration: .init(size: .small, type: .secondary),
                        state: disableState
                    ) {}
                    
                    Spacer()
                }
                
                MainButton(
                    text: "Primary",
                    icon: nil,
                    configuration: .init(size: .fullWidth, type: .primary),
                    state: buttonState
                ) {}
                
                MainButton(
                    text: "Secondary",
                    icon: nil,
                    configuration: .init(size: .fullWidth, type: .secondary),
                    state: buttonState
                ) {}
                
                MainButton(
                    text: "Disabled",
                    icon: nil,
                    configuration: .init(size: .fullWidth, type: .secondary),
                    state: disableState
                ) {}
                
        }.frame(maxWidth: .infinity)
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsPage()
    }
}
