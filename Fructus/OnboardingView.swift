//
//  OnboardingView.swift
//  Fructus
//
//  Created by Богдан Беннер on 1.09.22.
//

import SwiftUI

struct OnboardingView: View {
	var body: some View {
		TabView {
			ForEach(0..<5) { item in
				FruitCardView()
			} // FOREACH
		} // TAB
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
	}
}

struct OnboardingView_Previews: PreviewProvider {
	static var previews: some View {
		OnboardingView()
	}
}
