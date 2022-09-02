//
//  StartButtonView.swift
//  Fructus
//
//  Created by Богдан Беннер on 1.09.22.
//

import SwiftUI

struct StartButtonView: View {
	@AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
		Button {
			isOnboarding = false
		} label: {
			HStack(spacing: 8) {
				Text("Learn More")
				Image(systemName: "arrow.right.circle")
					.imageScale(.large)
			}
			.padding(.horizontal, 16)
			.padding(.vertical, 10)
			.background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
		}
		.accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
		StartButtonView()
			.preferredColorScheme(.dark)
			.previewLayout(.sizeThatFits)
    }
}
