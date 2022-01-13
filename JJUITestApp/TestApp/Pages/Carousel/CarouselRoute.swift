//
//  CarouselRoute.swift
//  TestApp
//
//  Created by Kevin Marin on 11/1/22.
//

import Foundation
import SwiftUI

struct CarouselRoute: RouteProtocol {
    var view: AnyView {
        return AnyView(CarouselPage())
    }
    
    var id: String {
        return "CarouselPage"
    }
}
