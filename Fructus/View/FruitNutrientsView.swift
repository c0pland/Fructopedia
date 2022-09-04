//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Богдан Беннер on 4.09.22.
//

import SwiftUI

struct FruitNutrientsView: View {
	var fruit: Fruit
	let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
		GroupBox() {
			DisclosureGroup("Nutritional Value per 100 g.") {
				ForEach(0..<nutrients.count, id: \.self) { item in
					Divider().padding(.vertical, 2)
					HStack {
						Group {
							Image(systemName: "info.circle")
							Text(nutrients[item])
						}
						.foregroundColor(fruit.gradientColors[1])
						.font(Font.system(.body).bold())
						Spacer(minLength: 25)
						Text(fruit.nutrition[item])
							.multilineTextAlignment(.trailing)
					}
				}
			} // DISCLOSURE GROUP
		} // BOX
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
		FruitNutrientsView(fruit: fruitsData[5])
			.preferredColorScheme(.dark)
			.previewLayout(.fixed(width: 375, height: 480))
			.padding()
    }
}
