//
//  ColorCyclicRing.swift
//  Drawings
//
//  Created by Nowroz Islam on 23/8/23.
//

import SwiftUI

struct ColorCyclicRing: View {
    let numberOfRings: Int = 100
    var controller: Double = 0.0
    
    var body: some View {
        ZStack {
            ForEach(0..<numberOfRings, id: \.self) { num in
                Circle()
                    .inset(by: Double(num))
                    .strokeBorder(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                color(for: num, brightness: 1.0),
                                color(for: num, brightness: 0.5)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        ),
                        lineWidth: 2
                    )
            }
        }
        .drawingGroup()
    }
    
    func color(for num: Int, brightness: Double) -> Color{
        var targetHue = Double(num) / Double(numberOfRings) + controller
        
        if targetHue > 1 {
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1.0, brightness: brightness)
    }
}

#Preview {
    ColorCyclicRing()
}
