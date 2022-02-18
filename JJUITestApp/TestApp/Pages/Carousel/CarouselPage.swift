//
//  CarouselPage.swift
//  TestApp
//
//  Created by Josue German Hernandez Gonzalez on 17-02-22.
//

import SwiftUI
import JKUI

struct CarouselPage: View {
    let imageNames = Array(1..<6).map{ "\($0)" }
    var body: some View {
        VStack {
            Spacer()            
            CarouselView(imageNames: self.imageNames)
                .frame(width: 400, height: 250)
                .padding(100)
            Spacer()
        }
        
    }
}

struct CarouselPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
