//
//  ContentView.swift
//  PracticeWeatherAppSA
//
//  Created by Mitch Andrade on 9/23/23.
//

import SwiftUI

// Building mimic UI of the Apple Weather app
// How the 3 SwiftUI Stacks work

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.teal.opacity(0.7), .blue.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea(.all)
            }
            
        }
    }
}

#Preview {
    ContentView()
}

