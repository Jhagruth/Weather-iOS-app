//
//  WelcomeView.swift
//  Weather
//
//  Created by Jhagruth Palakonda on 23/12/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @State var shake = false
    @EnvironmentObject var locationManager:LocationManager
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 20) {
                Text("Welcome to Weather")
                    .font(.title)
                    .bold()
                Text("Please allow location access to get your current location")
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .padding()
            
            LocationButton(.sendCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        Spacer()
        
        VStack {
            Text("This is a homegrown app built using SwiftUI and CoreLocation Bundle by Jhagruth")
                .font(.footnote)
                .font(.system(size: 12))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal, -30)
                .frame(width:340, height:47)
                .background(Rectangle()
                    .fill(Color(red: 0.043, green: 0.518, blue: 1.001))
                .opacity(0.7)
                .cornerRadius(10))
                .multilineTextAlignment(.center)
        }
        .padding(.bottom,30)
    }
}

#Preview {
    WelcomeView()
}
