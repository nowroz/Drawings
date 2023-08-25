//
//  ContentView.swift
//  Drawings
//
//  Created by Nowroz Islam on 22/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var rows: Int = 5
    @State private var columns: Int = 5
    
    var body: some View {
        VStack(spacing: 50) {
           Checkerboard(rows: rows, columns: columns)
                .frame(width: 380, height: 380)
                .border(.black, width: 2)
            
            Button("5x5") {
                withAnimation {
                    rows = 5
                    columns = 5
                }
            }
            .buttonStyle(.bordered)
            .tint(.blue)
            
            Button("8x8") {
                withAnimation {
                    rows = 8
                    columns = 8
                }
            }
            .buttonStyle(.bordered)
            .tint(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
