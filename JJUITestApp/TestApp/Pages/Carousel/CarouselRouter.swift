//
//  CarouselRouter.swift
//  TestApp
//
//  Created by Josue German Hernandez Gonzalez on 17-02-22.
//

import SwiftUI

struct CarouselRouter: RouteProtocol {
    var view: AnyView {
        return AnyView(CarouselPage())
    }
    
    var id: String {
        return "CarouselPage"
    }
}

