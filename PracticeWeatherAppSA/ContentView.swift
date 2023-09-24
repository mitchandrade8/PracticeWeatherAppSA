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
                BackgroundView()
                
                VStack(spacing: 8) {
                    Text("Greeley, CO")
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
                        
            
                        HStack(spacing: 20) {
                            DailyTemperatureSnapshotView(day: "Mon", temperatureImage: "cloud.sun.rain.fill", dailyTemperature: "58")
                            DailyTemperatureSnapshotView(day: "Tue", temperatureImage: "cloud.sun.fill", dailyTemperature: "76")
                            DailyTemperatureSnapshotView(day: "Wed", temperatureImage: "sun.max.fill", dailyTemperature: "94")
                            DailyTemperatureSnapshotView(day: "Thr", temperatureImage: "cloud.sun.fill", dailyTemperature: "87")
                            DailyTemperatureSnapshotView(day: "Fri", temperatureImage: "sun.max.fill", dailyTemperature: "80")
                        }
                        .padding(.top, 40)
                        
                        
                        Spacer()
                        
                        Button {
                            print("Button tapped!")
                        } label: {
                            Text("Light Mode")
                                .frame(width: 280, height: 50)
                                .background(.white)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .cornerRadius(8)
                        }
                        
                        
                        Spacer()
                        
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


struct DailyTemperatureSnapshotView: View {
    
    var day = ""
    var temperatureImage = ""
    var dailyTemperature = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text(day)
                .foregroundColor(.white)
            
            Image(systemName: temperatureImage)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text("\(dailyTemperature)°")
                .font(.system(size: 24, weight: .medium, design: .serif))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    
    
    var body: some View {
        LinearGradient(colors: [.blue, .lightBlue], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
    }
}
