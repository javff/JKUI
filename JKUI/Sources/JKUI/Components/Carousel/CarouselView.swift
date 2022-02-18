//
//  CarouselView.swift
//  
//
//  Created by Josue German Hernandez Gonzalez on 17-02-22.
//

import SwiftUI

public struct CarouselView: View {
    let imageNames: [String]
    let pathRadius:CGFloat = 20.0
    
    // Animation
    let springAnimation = Animation.interpolatingSpring(mass: 0.1, stiffness: 20, damping: 1.5, initialVelocity: 0)
    
    @State var dragOffset: CGFloat = 0
    @State var baseOffset: CGFloat = 0
    @State var scrollOffset: CGFloat = 0
    @State var isDragging: Bool = false
    
    var numberOfViews: Int {
        return self.imageNames.count
    }
    
    func normalizeDragValue(_ value: CGFloat, rectWidth: CGFloat) -> CGFloat {
        return value/((rectWidth-2*pathRadius)*0.4)
    }
    
    public init(imageNames: [String]) {
        self.imageNames = imageNames
    }
    
    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach (0..<numberOfViews) { index in
                    Image("\(index+1)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .modifier(CarouselViewEffect(numberOfViews: numberOfViews, pathRadius: pathRadius, rect: geometry.frame(in: .local), viewIndex: index, offsetValue: Double(index) + Double(scrollOffset)))
                        .onTapGesture {
                            if !self.isDragging {
                                withAnimation(springAnimation){
                                    self.scrollOffset += 1
                                }
                            }
                        }
                }
            }
            .padding()
            .simultaneousGesture( DragGesture(minimumDistance: 1, coordinateSpace: .local)
                .onChanged { value in
                    self.dragOffset = self.normalizeDragValue(value.translation.width, rectWidth: geometry.size.width)
                    self.scrollOffset = baseOffset + dragOffset
                    self.isDragging = true
                }
                .onEnded { value in
                    withAnimation(springAnimation){
                        let predicted = self.baseOffset + self.normalizeDragValue(value.predictedEndTranslation.width, rectWidth: geometry.size.width)
                        self.scrollOffset = round(self.scrollOffset*0.7 + predicted*0.3)
                        self.baseOffset = self.scrollOffset
                        self.dragOffset = 0
                    }
                    self.isDragging = false
                }
            )
        }
    }
}
