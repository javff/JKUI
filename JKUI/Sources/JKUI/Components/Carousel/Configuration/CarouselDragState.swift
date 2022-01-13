//
//  CarouselDragState.swift
//  
//
//  Created by Kevin Marin on 12/1/22.
//

import SwiftUI

enum CarouselDragState {
    
    case inactive
    case dragging(translation: CGSize)
    
    var translation: CGSize {
        switch self {
        case .inactive:                  return .zero
        case .dragging(let translation): return translation
        }
    }
    
    var isDragging: Bool {
        switch self {
        case .inactive: return false
        case .dragging: return true
        }
    }
}
