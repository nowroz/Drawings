//
//  Flower.swift
//  Drawings
//
//  Created by Nowroz Islam on 23/8/23.
//

import SwiftUI

struct Flower: Shape {
    var petalOffsetAlongX: Double = -20.0
    var petalWidth: Double = 100.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        for radian in stride(from: 0.0, to: Double.pi * 2, by: Double.pi / 8) {
            let rotation = CGAffineTransform(rotationAngle: radian)
            let translation = CGAffineTransform(translationX: rect.midX, y: rect.midY)
            
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffsetAlongX, y: 0, width: petalWidth, height: rect.width / 2))
            
            let rotatedPetal = originalPetal.applying(rotation)
            let translatedPetal = rotatedPetal.applying(translation)
            
            path.addPath(translatedPetal)
        }
        
        return path
    }
}

#Preview {
    Flower()
        .stroke(.blue)
}
