//
//  CircleProgressBar.swift
//  
//
//  Created by Kevin Marin on 11/1/22.
//

import SwiftUI

struct CircleProgressBar: View {
    @State private var animateStrokeStart = false
    @State private var animateStrokeEnd = true
    @State private var isRotating = true
    
    let configuration: ProgressIndicatorConfiguration
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: configuration.progressLineWidth)
                .foregroundColor(.clear)
            
            Circle()
                .trim(
                    from: animateStrokeStart ? 1/3 : 1/9,
                    to: animateStrokeEnd ? 2/5 : 1
                )
                .stroke(
                    style: StrokeStyle(
                        lineWidth: configuration.progressLineWidth,
                        lineCap: .round,
                        lineJoin: .round
                    )
                )
                .foregroundColor(configuration.ringColor)
                .rotationEffect(.degrees(isRotating ? 360 : 0))
                .animation(
                    .linear(duration: 1).repeatForever(autoreverses: false),
                    value: isRotating
                )
                .animation(
                    .linear(duration: 1).delay(0.5).repeatForever(autoreverses: true),
                    value: animateStrokeStart
                )
                .animation(
                    .linear(duration: 1).delay(1).repeatForever(autoreverses: true),
                    value: animateStrokeEnd
                )
                .onAppear() {
                    isRotating.toggle()
                    DispatchQueue.main.delay(0.5) { animateStrokeStart.toggle() }
                    DispatchQueue.main.delay(1) { animateStrokeEnd.toggle() }
                }
        }
        .frame(
            width: configuration.size.width,
            height: configuration.size.height
        )
        .padding()
    }
}

struct CircleProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressBar(configuration: ProgressIndicatorConfiguration(size: .large,
                                                                        color: .blue))
    }
}

