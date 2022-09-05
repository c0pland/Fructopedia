//
//  FruitCardView.swift
//  Fructus
//
//  Created by Богдан Беннер on 1.09.22.
//

import SwiftUI

struct FruitCardView: View {
	// MARK: Properties
	var fruit: Fruit
	@State private var isAnimating: Bool = false
	
	// MARK: Body
	var body: some View {
		ZStack {
			VStack(alignment: .center, spacing: 10) {
				// FRUIT IMAGE
				Image(fruit.image)
					.resizable()
					.scaledToFit()
					.shadow(color: Color.black, radius: 8, x: 6, y: 8)
				Text(fruit.title)
					.foregroundColor(Color.white)
					.font(.largeTitle)
					.fontWeight(.heavy)
					.shadow(color: Color.black, radius: 2, x: 2, y: 2)
					.scaleEffect(isAnimating ? 1.0 : 0.6)
				
				Text(fruit.headline)
					.foregroundColor(Color.white)
					.multilineTextAlignment(.center)
					.padding(.horizontal, 16)
					.frame(maxWidth: 480)
				StartButtonView()
			} // VSTACK
		} // ZSTACK
		.onAppear(perform: {
			withAnimation(.easeOut(duration: 0.5)) {
				isAnimating = true
				
			}
		})
		.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
		.background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
		.cornerRadius(20)
		.padding(.horizontal, 20)
	}
}

// MARK: Preview

struct FruitCardView_Previews: PreviewProvider {
	static var previews: some View {
		FruitCardView(fruit: fruitsData[0])
			.previewLayout(.fixed(width: 320, height: 640))
	}
}
