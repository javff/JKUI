//
//  BubbleView.swift
//  
//
//  Created by Josue German Hernandez Gonzalez on 11-02-22.
//

import SwiftUI

public struct BubbleView: View {
    var size: CGFloat = 30
    var xOffset: CGFloat = 0
    var yOffset: CGFloat = 0
    var opacity: Double = 0.1
    
    @State var shirking = false
    
    @State private var shimmer: Bool = .random()
    @State private var shimmerDelay: Double = .random(in: 0.15...0.55)
    
    @State private var float: Bool = .random()
    @State private var floatDelay: Double = .random(in: 0.15...0.55)
    
    public var body: some View {
        AngularGradient(gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.9490196108818054, green: 0.33725491166114807, blue: 0.33725491166114807, alpha: 1)), Color(#colorLiteral(red: 0.9843137264251709, green: 0.8156862854957581, blue: 0.23137255012989044, alpha: 1)), Color(#colorLiteral(red: 0.33725491166114807, green: 0.7686274647712708, blue: 0.9607843160629272, alpha: 1)), Color(#colorLiteral(red: 0.7568627595901489, green: 0.33725491166114807, blue: 0.7607843279838562, alpha: 1))]), center: .center ).blur(radius: 10)
            .frame(width: size, height: size)
            .clipShape(Circle())
            .offset(x: xOffset, y: yOffset)
    }
}
