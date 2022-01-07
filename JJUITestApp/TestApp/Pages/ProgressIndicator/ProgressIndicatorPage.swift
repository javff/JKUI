//
//  ProgressIndicatorPage.swift
//  JJUITestApp
//
//  Created by Juan Andres Vasquez Ferrer on 28-12-21.
//

import SwiftUI
import JKUI

struct ProgressIndicatorPage: View {
    var body: some View {
        VStack {
            
            HStack(spacing: 20) {
                Text("Extra Large")
                ProgressIndicator(
                    configuration: ProgressIndicatorConfiguration(size: .xLarge, color: .blue)
                )
            }
            
            HStack(spacing: 20) {
                Text("Large")
                ProgressIndicator(
                    configuration: ProgressIndicatorConfiguration(size: .large, color: .blue)
                )
            }
            
            HStack(spacing: 20) {
                Text("Medium")
                ProgressIndicator(
                    configuration: ProgressIndicatorConfiguration(size: .medium, color: .blue)
                )
            }
            
            HStack(spacing: 20) {
                Text("Small")
                ProgressIndicator(
                    configuration: ProgressIndicatorConfiguration(size: .small, color: .blue)
                )
            }
            
            HStack(spacing: 20) {
                Text("Extra Small")
                ProgressIndicator(
                    configuration: ProgressIndicatorConfiguration(size: .small, color: .blue)
                )
            }
        }
    }
}
