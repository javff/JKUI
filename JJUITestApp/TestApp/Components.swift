//
//  Pages.swift
//  JJUITestApp
//
//  Created by Juan Andres Vasquez Ferrer on 28-12-21.
//

import Foundation
import SwiftUI

enum Component: String, CaseIterable {
    case buttons
    case progressIndicator
    case gallery
    case wallpaper
    case carousel
    
    var name: String {
        switch self {
        case .buttons: return "Buttons"
        case .progressIndicator: return "Progress Indicator"
        case .gallery: return "Gallery"
        case .wallpaper: return "Wallpapers"
        case .carousel: return "Carousel"
        }
    }
}
