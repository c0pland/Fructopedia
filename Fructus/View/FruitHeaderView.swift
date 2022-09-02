//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Богдан Беннер on 2.09.22.
//

import SwiftUI

struct FruitHeaderView: View {
	var fruit: Fruit
	@State private var isAnimatingImage = false
    var body: some View {
		ZStack {
			LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
			Image(fruit.image)
				.resizable()
				.scaledToFit()
				.shadow(color: Color.black, radius: 8, x: 6, y: 8)
				.padding(.vertical, 20)
				.scaleEffect(isAnimatingImage ? 1.0 : 0.6)
		} // ZSTACK
		.frame(height: 440)
		.onAppear() {
			withAnimation(.easeOut(duration: 0.5)) {
				isAnimatingImage = true
			}
		}
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[5])
			.previewLayout(.fixed(width: 375, height: 440))
    }
}
