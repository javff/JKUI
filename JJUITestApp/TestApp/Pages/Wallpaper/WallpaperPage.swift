//
//  WallpaperPage.swift
//  TestApp
//
//  Created by Josue German Hernandez Gonzalez on 11-02-22.
//

import SwiftUI
import JKUI

struct WallpaperPage: View {
    var body: some View {
        VStack {
            Text("Hi!!!")
        }.background(BubbleBackground().edgesIgnoringSafeArea(.all))
    }
}

struct WallpaperPage_Previews: PreviewProvider {
    static var previews: some View {
        WallpaperPage()
    }
}
