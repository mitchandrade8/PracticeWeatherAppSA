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
    
    // Structs can not hold state, why we have a @State property wrapper
    
    // Source of truth changes the data
    @State private var isNight = false
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView(isNight: $isNight)
                
                VStack(spacing: 8) {
                    CityTextView(cityName: "Greeley, CO")
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.white)
                        .padding(.horizontal, 80)
                    
                    MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 54 : 76)
                    
                    HStack(spacing: 20) {
                        
                        DailyTemperatureSnapshotView(
                            day: "Mon",
                            temperatureImage: "cloud.sun.rain.fill",
                            dailyTemperature: "58")
                        
                        DailyTemperatureSnapshotView(
                            day: "Tue",
                            temperatureImage: "cloud.sun.fill",
                            dailyTemperature: "76")
                        
                        DailyTemperatureSnapshotView(
                            day: "Wed",
                            temperatureImage: "sun.max.fill",
                            dailyTemperature: "94")
                        
                        DailyTemperatureSnapshotView(
                            day: "Thr",
                            temperatureImage: "cloud.sun.fill",
                            dailyTemperature: "87")
                        
                        DailyTemperatureSnapshotView(
                            day: "Fri",
                            temperatureImage: "sun.max.fill",
                            dailyTemperature: "80")
                        
                    }
                    .padding(.top, 40)
                    
                    
                    Spacer()
                    
                    Button {
                        isNight.toggle()
                    } label: {
                        WeatherButton(
                            title: "Change Day Time",
                            backgroundColor: .white,
                            textForegroundColor: isNight ? .black : .blue)
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
                .symbolRenderingMode(.multicolor)
//                .renderingMode(.original)
                .resizable()
//                .foregroundStyle(.white, .teal, .gray)
                .aspectRatio(contentMode: .fit)
//                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text("\(dailyTemperature)°")
                .font(.system(size: 24, weight: .medium, design: .serif))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
//    var topColor: Color
//    var bottomColor: Color
    
    var body: some View {
//        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue") ], startPoint: .topLeading, endPoint: .bottomTrailing)
//            .ignoresSafeArea(.all)
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
    }
}


struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .serif))
                .foregroundColor(.white)
           
            
        }
    }
}


