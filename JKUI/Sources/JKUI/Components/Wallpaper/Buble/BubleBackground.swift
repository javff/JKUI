//
//  BubleBackground.swift
//  
//
//  Created by Josue German Hernandez Gonzalez on 11-02-22.
//

import SwiftUI

public struct BubleBackground: View {
    @State var shirking = false
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.init(.systemBackground)
            
            ZStack(alignment: .top) {
               
                AngularGradient(gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.9843137264251709, green: 0.8156862854957581, blue: 0.23137255012989044, alpha: 1)), Color(#colorLiteral(red: 0.33725491166114807, green: 0.7686274647712708, blue: 0.9607843160629272, alpha: 1)), Color(#colorLiteral(red: 0.7568627595901489, green: 0.33725491166114807, blue: 0.7607843279838562, alpha: 1))]), center: .center ).blur(radius: 10)
                    .frame(width: 220, height: 220)
                    .clipShape(Blop1())
                    .offset(x: 10, y: -400)
                
                AngularGradient(gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.9843137264251709, green: 0.8156862854957581, blue: 0.23137255012989044, alpha: 1)), Color(#colorLiteral(red: 0.33725491166114807, green: 0.7686274647712708, blue: 0.9607843160629272, alpha: 1)), Color(#colorLiteral(red: 0.7568627595901489, green: 0.33725491166114807, blue: 0.7607843279838562, alpha: 1))]), center: .center ).blur(radius: 10)
                    .frame(width: 220, height: 220)
                    .clipShape(Blop1())
                    .offset(x: 170, y: -40)
                
                AngularGradient(gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.9490196108818054, green: 0.33725491166114807, blue: 0.33725491166114807, alpha: 1)), Color(#colorLiteral(red: 0.9843137264251709, green: 0.8156862854957581, blue: 0.23137255012989044, alpha: 1)), Color(#colorLiteral(red: 0.33725491166114807, green: 0.7686274647712708, blue: 0.9607843160629272, alpha: 1)), Color(#colorLiteral(red: 0.7568627595901489, green: 0.33725491166114807, blue: 0.7607843279838562, alpha: 1))]), center: .top ).blur(radius: 10)
                    .frame(width: 200, height: 200)
                    .clipShape(Blop2())
                    .offset(x: -150, y: -30)

                AngularGradient(gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.9490196108818054, green: 0.33725491166114807, blue: 0.33725491166114807, alpha: 1)), Color(#colorLiteral(red: 0.9843137264251709, green: 0.8156862854957581, blue: 0.23137255012989044, alpha: 1)), Color(#colorLiteral(red: 0.33725491166114807, green: 0.7686274647712708, blue: 0.9607843160629272, alpha: 1)), Color(#colorLiteral(red: 0.7568627595901489, green: 0.33725491166114807, blue: 0.7607843279838562, alpha: 1))]), center: .trailing ).blur(radius: 10)
                    .frame(width: 200, height: 200)
                    .clipShape(Blop3())
                    .offset(x: -160, y: 210)
                
                AngularGradient(gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.9490196108818054, green: 0.33725491166114807, blue: 0.33725491166114807, alpha: 1)), Color(#colorLiteral(red: 0.9843137264251709, green: 0.8156862854957581, blue: 0.23137255012989044, alpha: 1)), Color(#colorLiteral(red: 0.33725491166114807, green: 0.7686274647712708, blue: 0.9607843160629272, alpha: 1)), Color(#colorLiteral(red: 0.7568627595901489, green: 0.33725491166114807, blue: 0.7607843279838562, alpha: 1))]), center: .bottomLeading ).blur(radius: 10)
                    .frame(width: 170, height: 170)
                    .clipShape(Blop4())
                    .offset(x: 160, y: 230)
                
                AngularGradient(gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.9490196108818054, green: 0.33725491166114807, blue: 0.33725491166114807, alpha: 1)), Color(#colorLiteral(red: 0.9843137264251709, green: 0.8156862854957581, blue: 0.23137255012989044, alpha: 1)), Color(#colorLiteral(red: 0.33725491166114807, green: 0.7686274647712708, blue: 0.9607843160629272, alpha: 1)), Color(#colorLiteral(red: 0.7568627595901489, green: 0.33725491166114807, blue: 0.7607843279838562, alpha: 1))]), center: .leading ).blur(radius: 10)
                    .frame(width: 90, height: 90)
                    .clipShape(Blop5())
                    .offset(x: 10, y: 80)
                   
            }
            
          
        }
        .onAppear {
            shirking.toggle()
        }

       
    }
}
