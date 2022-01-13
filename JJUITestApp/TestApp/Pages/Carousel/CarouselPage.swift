//
//  CarouselPage.swift
//  TestApp
//
//  Created by Kevin Marin on 11/1/22.
//

import SwiftUI
import JKUI

struct CarouselPage: View {
    
    @State var position: Int = 0
    @State var spacing: CGFloat = 20
    @State var cardWidth: CGFloat = 200
    @State var cardHeight: CGFloat = 200
    @State var cardLateralHeight: CarouselCardLateralSize = .neutral
    
    @State private var views: [AnyView] = [
        AnyView(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .foregroundColor(Color.blue)
                .frame(width: 200, height: 200)
                .overlay(content: {
                    Image(systemName: "swift")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 100)
                })
        ),
        AnyView(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .foregroundColor(Color.green)
                .frame(width: 200, height: 200)
                .overlay(content: {
                    Image(systemName: "dollarsign.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 100)
                })
        ),
        AnyView(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .foregroundColor(Color.yellow)
                .frame(width: 200, height: 200)
                .overlay(content: {
                    Image(systemName: "lightbulb.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 100)
                })
        ),
        AnyView(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .foregroundColor(Color.orange)
                .frame(width: 200, height: 200)
                .overlay(content: {
                    Image(systemName: "paintbrush.pointed.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 100)
                })
        ),
        AnyView(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .foregroundColor(Color.gray)
                .frame(width: 200, height: 200)
                .overlay(content: {
                    Image(systemName: "applelogo")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 100)
                })
        )
    ]
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            Text("parameter: position")
            HStack(spacing: 0) {
                ForEach((0...(views.count-1)), id: \.self) { index in
                    MainButton(
                        text: "#\(index)",
                        configuration: .init(size: .medium, type: .primary),
                        state: abs(position % (views.count)) == index ? .idle : .disabled
                    ) {
                        position = index
                    }
                }
            }
            
            Text("parameter: spacing")
            HStack(spacing: 0) {
                ForEach((0...4), id: \.self) { index in
                    MainButton(
                        text: "\(index * 10)",
                        configuration: .init(size: .medium, type: .primary),
                        state: spacing == CGFloat(index * 10) ? .idle : .disabled
                    ) {
                        spacing = CGFloat(index * 10)
                    }
                }
            }
            
            Text("parameter: card lateral height")
            HStack(spacing: 0) {
                ForEach(CarouselCardLateralSize.allCases, id: \.hashValue ) { value in
                    MainButton(
                        text: "\(value)",
                        configuration: .init(size: .medium, type: .primary),
                        state: cardLateralHeight == value ? .idle : .disabled
                    ) {
                        cardLateralHeight = value
                    }
                }
            }
            
            Carousel(
                views: $views,
                currentPosition: $position,
                itemWidth: cardWidth,
                itemHeight: cardHeight,
                spacing: spacing,
                itemLateralHeight: cardLateralHeight
            )
            
            Spacer()
        }
    }
}

struct CarouselPage_Previews: PreviewProvider {
    static var previews: some View {
        CarouselPage()
    }
}
