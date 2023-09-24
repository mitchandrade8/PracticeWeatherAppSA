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
                
                VStack() {
                    Text("Cupertino, CA")
                        .font(.system(size: 32, weight: .bold, design: .serif))
                        .foregroundColor(.white)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.white)
                        .padding(.horizontal, 80)
                    
                    VStack(spacing: 8) {
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 220, height: 220)
                        
                        Text("76°")
                            .font(.system(size: 70, weight: .medium, design: .serif))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                
                
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}

