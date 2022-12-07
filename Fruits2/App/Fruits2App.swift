//
//  Fruits2App.swift
//  Fruits2
//
//  Created by a on 10/14/21.
//

import SwiftUI

@main
struct Fruits2App: App {
    // MARK: PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    // MARK: BODY
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
