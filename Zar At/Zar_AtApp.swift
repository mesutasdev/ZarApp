//
//  Zar_AtApp.swift
//  Zar At
//
//  Created by Artı Studio on 19.07.2024.
//

import SwiftUI

@main
struct Zar_AtApp: App {
    @State private var showLaunchScreen = true
    var body: some Scene {
        WindowGroup {
            if showLaunchScreen{
                LaunchScreenView()
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            showLaunchScreen = false
                        }
                    }
            }else {
                ContentView()
            }
           
        }
    }
}
