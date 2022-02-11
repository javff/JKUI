//
//  WallpaperRoute.swift
//  TestApp
//
//  Created by Josue German Hernandez Gonzalez on 11-02-22.
//

import Foundation
import SwiftUI

struct WallpaperRoute: RouteProtocol {
    var view: AnyView {
        return AnyView(WallpaperPage())
    }
    
    var id: String {
        return "WallpaperPage"
    }
}
