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
            RadialGradient(gradient: Gradient(colors: [Color("app_degrade_start"), Color("app_degrade_end")]),
                           center: .top, startRadius: 2, endRadius: 650)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                GeometryReader { geometry in
                    VStack {
                        Spacer() // Spacer at the top
                        
                        Image("HorizontalLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width) // Subtracting to account for padding
                        
                        Spacer() // Spacer at the bottom
                    }
                }
                
                // Sample label
                Text("Welcome to Vini's App")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
            }
            .padding(.horizontal) // Adds horizontal padding
        }
    }
}



#Preview {
    SplashScreen()
}
