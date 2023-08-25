//
//  Checkerboard.swift
//  Drawings
//
//  Created by Nowroz Islam on 25/8/23.
//

import SwiftUI

struct Checkerboard: Shape {
    var rows: Int
    var columns: Int
    
    var animatableData: AnimatablePair<Double, Double> {
        get {
            AnimatablePair(Double(rows), Double(columns))
        }
        
        set {
            rows = Int(newValue.first)
            columns = Int(newValue.second)
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.width / Double(columns)
        let height = rect.height / Double(rows)
        
        for row in 0..<rows {
            for column in 0..<columns {
                if (row + column).isMultiple(of: 2) {
                    path.addRect(CGRect(x: Double(column) * width, y: Double(row) * height, width: width, height: height))
                }
            }
        }
        
        return path
    }
}

#Preview {
    Checkerboard(rows: 8, columns: 5)
}
