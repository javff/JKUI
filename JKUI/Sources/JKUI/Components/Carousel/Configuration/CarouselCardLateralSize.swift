//
//  CarouselCardLateralSize.swift
//  
//
//  Created by Kevin Marin on 12/1/22.
//

import SwiftUI

public enum CarouselCardLateralSize: Equatable, CaseIterable {
    public var id: UUID { UUID() }
    
    case xLarge
    case large
    case neutral
    case small
    case xSmall
        
    public var percentage: CGFloat {
        switch self {
        case .xLarge:
            return 1.2
        case .large:
            return 1.1
        case .neutral:
            return 1
        case .small:
            return 0.9
        case .xSmall:
            return 0.8
        }
    }
}
