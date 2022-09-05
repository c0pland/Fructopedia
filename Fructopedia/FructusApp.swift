//
//  FructusApp.swift
//  Fructus
//
//  Created by Богдан Беннер on 1.09.22.
//

import SwiftUI

@main
struct FructusApp: App {
	@AppStorage("isOnboarding") var isOnboarding: Bool = true
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
