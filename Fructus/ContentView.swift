//
//  ContentView.swift
//  Fructus
//
//  Created by Богдан Беннер on 1.09.22.
//

import SwiftUI

struct ContentView: View {
	var fruits: [Fruit] = fruitsData
    var body: some View {
		NavigationView{
			List{
				ForEach(fruits.shuffled()) { item in
					FruitRowView(fruit: item)
						.padding(.vertical, 4)
				}
			} // LIST
			.navigationTitle("Fruits")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
