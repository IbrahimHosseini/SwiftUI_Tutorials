//
//  SUIPath.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim on 1/24/23.
//

import SwiftUI

struct SUIPath: View {
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width * 0.25
            let centerWidth = geometry.size.width / 2.0
            let top = 10.0

            Path { path in
                path.addLines([
                    CGPoint(x: centerWidth, y: top),
                    CGPoint(x: centerWidth - width, y: top + width),
                    CGPoint(x: centerWidth, y: top + width * 0.666),
                    CGPoint(x: centerWidth + width, y: top + width),
                ])
            }
            .fill(LinearGradient(
                colors: [Self.gradientStart, Self.gradientEnd],
                                 startPoint: UnitPoint(x: 0.5, y: 0.0),
                                 endPoint: UnitPoint(x: 0.5, y: 0.2)))
            
            
        }
    }
    
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

struct SUIPath_Previews: PreviewProvider {
    static var previews: some View {
        SUIPath()
    }
}
