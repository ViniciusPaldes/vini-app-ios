//
//  SplashScreen.swift
//  ViniApp
//
//  Created by Vinicius Paldês on 25/01/24.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            // Background image
            Image("HorizontalLogo")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            // Gradient overlay
            LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            // Sample label
            VStack {
                Spacer()
                Text("Welcome to Vini's App")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
            }
        }
    }
}


#Preview {
    SplashScreen()
}
