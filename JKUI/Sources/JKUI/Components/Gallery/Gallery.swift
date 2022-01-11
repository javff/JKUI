//
//  JJUIGallery.swift
//  
//
//  Created by Juan Andres Vasquez Ferrer on 03-01-22.
//

import SwiftUI

public struct Gallery: View {

    public let images: [String]
    
    private var stepperText: String {
        "\(currentStep + 1) / \(totalSteps)"
    }
    
    private var totalSteps: Int {
        images.count
    }
    
    @State var currentStep: Int = 0
    
    @State private var isFullScreenPresented = false
    
    public init(images: [String]) {
        self.images = images
    }
    
    public var body: some View {
        ZStack(alignment: .topLeading) {
            
            GalleryView(images: images, currentStep: $currentStep) {
                isFullScreenPresented.toggle()
            }
            
            StepperView(text: stepperText)
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .padding()
        .fullScreenCover(isPresented: $isFullScreenPresented) {
            FullScreenElementView(images: images, currentStep: $currentStep)
        }
    }

}
