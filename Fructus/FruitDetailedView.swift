//
//  FruitDetailedView.swift
//  Fructus
//
//  Created by Богдан Беннер on 2.09.22.
//

import SwiftUI

struct FruitDetailedView: View {
	var fruit: Fruit
    var body: some View {
		NavigationView{
			ScrollView(.vertical, showsIndicators: false) {
				VStack(alignment: .center, spacing: 20) {
					// HEADER
					FruitHeaderView(fruit: fruit)
					VStack (alignment: .leading, spacing: 20) {
						// TITLE
						Text(fruit.title)
							.font(.largeTitle)
							.fontWeight(.heavy)
							.foregroundColor(fruit.gradientColors[1])
						// HEADLINE
						Text(fruit.headline)
							.font(.headline)
							.multilineTextAlignment(.leading)
						// NUTRIENTS
						
						//SUBHEADLINE
						Text("Learn more about \(fruit.title)".uppercased())
							.foregroundColor(fruit.gradientColors[1])
						// DESCRIPTION
						Text(fruit.description)
							.multilineTextAlignment(.leading)
						//LINK
						SourceLinkView()
							.padding(.top, 10)
							.padding(.bottom, 40)
					} // VSTACK
					.padding(.horizontal, 20)
					.frame(maxWidth: 640, alignment: .center)
				} // VSTACK
				.navigationBarTitle(fruit.title, displayMode: .inline)
				.navigationBarHidden(true)
			} // SCROLL
			.edgesIgnoringSafeArea(.top)
		} // NAVIGATION
	}
}

struct FruitDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailedView(fruit: fruitsData[2])
			.previewDevice("iPhone 13 Pro Max")
    }
}
