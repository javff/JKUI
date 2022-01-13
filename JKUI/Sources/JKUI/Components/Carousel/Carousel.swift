//
//  Carousel.swift
//  
//
//  Created by Kevin Marin on 11/1/22.
//

import SwiftUI

public struct Carousel: View {
    
    @GestureState private var dragState = CarouselDragState.inactive    
    @Binding var views: [AnyView]
    @Binding var position: Int
    var itemWidth: CGFloat
    var itemHeight: CGFloat
    var spacing: CGFloat
    var itemLateralHeight: CarouselCardLateralSize
        
    public init(views: Binding<[AnyView]>, currentPosition: Binding<Int>,
                itemWidth: CGFloat, itemHeight: CGFloat,
                spacing: CGFloat, itemLateralHeight: CarouselCardLateralSize) {
        self._views = views
        self._position = currentPosition
        self.itemWidth = itemWidth
        self.itemHeight = itemHeight
        self.spacing = spacing + ((itemWidth * itemLateralHeight.percentage) - itemWidth)/2
        self.itemLateralHeight = itemLateralHeight
    }
    
    public var body: some View {

        ZStack{
                        
            ForEach(Array( views.enumerated() ), id: \.offset) { index, item in
                views[index]
                    .scaleEffect( getScale(index))
                    .frame(width: getWidth(index), height: getHeight(index))
                    .animation(
                        .interpolatingSpring(stiffness: Double(itemWidth), damping: 30.0, initialVelocity: 10.0)
                    )
                    .shadow(radius: 3)
                    .opacity(self.getOpacity(index))
                    .animation(
                        .interpolatingSpring(stiffness: Double(itemWidth), damping: 30.0, initialVelocity: 10.0)
                    )
                    .offset(x: self.getOffset(index))
                    .animation(
                        .interpolatingSpring(stiffness: Double(itemWidth), damping: 30.0, initialVelocity: 10.0)
                    )
            }
            
        }
        .padding()
        .highPriorityGesture(
            DragGesture()
                .updating($dragState) { drag, state, transaction in
                    state = .dragging(translation: drag.translation)
                }
                .onEnded(onDragEnded)
        )

    }
    
    private func onDragEnded(drag: DragGesture.Value) {
        
        let dragThreshold:CGFloat = 200
        
        if drag.predictedEndTranslation.width > dragThreshold || drag.translation.width > dragThreshold{
            position =  position - 1
        } else if (drag.predictedEndTranslation.width) < (-1 * dragThreshold) || (drag.translation.width) < (-1 * dragThreshold){
            position =  position + 1
        }
    }
    
    /// returns the relative location of item
    func relativeLocation() -> Int {
        
        //Wildcard number to avoid not reaching the edges of Carousel
        let wildcardNumber = 10000
        
        return ((views.count * wildcardNumber) + position) % views.count
    }
    
    /// returns the scale for side items
    func getScale(_ i:Int) -> CGFloat {
        
        if i == relativeLocation(){
            return 1
        } else {
            return itemLateralHeight.percentage
        }
    }
    
    /// returns the item height
    func getHeight(_ index:Int) -> CGFloat {
        
        if index == relativeLocation(){
            return itemHeight
        } else {
            return itemHeight * itemLateralHeight.percentage
        }
    }
    
    /// returns the item width
    func getWidth(_ index: Int) -> CGFloat {
        
        if index == relativeLocation() {
            return itemWidth
        }
        else {
            return itemWidth * itemLateralHeight.percentage
        }
    }

    /// this function allow to display the elements closes to the main element of the carousel, and hidde the remaining elements
    func getOpacity(_ i:Int) -> Double {
        
        if i == relativeLocation()
            || i + 1 == relativeLocation()
            || i - 1 == relativeLocation()
            || (i + 1) - views.count == relativeLocation()
            || (i - 1) + views.count == relativeLocation()
        {
            return 1
        } else {
            return 0
        }
    }
    
    /// this function return the relative position of every elements in the carousel
    func getOffset(_ i:Int) -> CGFloat {
        
        //relative location  of the remainder items, this elements is hidden in this position
        let relativeOffScreenLocation: CGFloat = 10000.0
        
        //This sets up the central offset
        if (i) == relativeLocation()
        {
            //Set offset of cental
            return self.dragState.translation.width
        }
            //These set up the offset +/- 1
        else if
            (i) == relativeLocation() + 1
                ||
                (relativeLocation() == views.count - 1 && i == 0)
        {
            //Set offset +1
            return self.dragState.translation.width + (itemWidth + spacing)
        }
        else if
            (i) == relativeLocation() - 1
                ||
                (relativeLocation() == 0 && (i) == views.count - 1)
        {
            //Set offset -1
            return self.dragState.translation.width - (itemWidth + spacing)
        }
            //These set up the offset +/- 2
        else if
            (i) == relativeLocation() + 2
                ||
                (relativeLocation() == views.count-1 && i == 1)
                ||
                (relativeLocation() == views.count-2 && i == 0)
        {
            return self.dragState.translation.width + (2*(itemWidth + spacing))
        }
        else if
            (i) == relativeLocation() - 2
                ||
                (relativeLocation() == 1 && i == views.count-1)
                ||
                (relativeLocation() == 0 && i == views.count-2)
        {
            //Set offset -2
            return self.dragState.translation.width - (2*(itemWidth + spacing))
        }
            //These set up the offset +/- 3
        else if
            (i) == relativeLocation() + 3
                ||
                (relativeLocation() == views.count-1 && i == 2)
                ||
                (relativeLocation() == views.count-2 && i == 1)
                ||
                (relativeLocation() == views.count-3 && i == 0)
        {
            return self.dragState.translation.width + (3*(itemWidth + spacing))
        }
        else if
            (i) == relativeLocation() - 3
                ||
                (relativeLocation() == 2 && i == views.count-1)
                ||
                (relativeLocation() == 1 && i == views.count-2)
                ||
                (relativeLocation() == 0 && i == views.count-3)
        {
            //Set offset -2
            return self.dragState.translation.width - (3*(itemWidth + spacing))
        }
            //This is the remainder
        else {
            return relativeOffScreenLocation
        }
    }
    
}
