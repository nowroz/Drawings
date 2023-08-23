//
//  ContentView.swift
//  Drawings
//
//  Created by Nowroz Islam on 22/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var controller: Double = 0.0
    
    var body: some View {
        VStack {
            ColorCyclicRing(controller: controller)
            
            Slider(value: $controller)
                .onChange(of: controller) {
                    print(controller)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
