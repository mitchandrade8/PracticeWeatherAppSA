//
//  WeatherButton.swift
//  PracticeWeatherAppSA
//
//  Created by Mitch Andrade on 9/24/23.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var backgroundColor: Color
    var textForegroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textForegroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(8)
    }
}
