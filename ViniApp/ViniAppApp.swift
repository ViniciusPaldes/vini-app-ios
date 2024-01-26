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
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
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
