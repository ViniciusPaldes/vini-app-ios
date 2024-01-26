//
//  ViniAppApp.swift
//  ViniApp
//
//  Created by Vinicius Paldês on 25/01/24.
//

import SwiftUI

@main
struct ViniAppApp: App {
    @State private var showingSplash = true

    var body: some Scene {
            WindowGroup {
                if showingSplash {
                    SplashScreen()
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                // Replace '3' with the number of seconds you want the splash screen to be visible
                                showingSplash = false
                            }
                        }
                } else {
                    // Your main view goes here
                    ContentView()
                }
            }
        }
}
