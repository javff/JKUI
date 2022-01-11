//
//  ProgressIndicator.swift
//  
//
//  Created by Juan Andres Vasquez Ferrer on 03-12-21.
//

import SwiftUI

public struct ProgressIndicator: View {
    
    private let configuration: ProgressIndicatorConfiguration
    
    public init(configuration: ProgressIndicatorConfiguration) {
        self.configuration = configuration
    }
    
    public var body: some View {
        CircleProgressBar(configuration: configuration)
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        let themeColor = ThemeColor()
        let themeFont = ThemeFont()
        let theme = ThemeConfiguration(color: themeColor,
                                       font: themeFont)
        
        ThemeManager.configure(theme: theme)
        
        return ProgressIndicator(
            configuration: ProgressIndicatorConfiguration(size: .large,
                                                          color: .blue)
        )
    }
}
