//
//  ContentView.swift
//  Fructus
//
//  Created by Богдан Беннер on 1.09.22.
//

import SwiftUI

struct ContentView: View {
	@State private var isShowingSettings = false
	var fruits: [Fruit] = fruitsData
	var body: some View {
		NavigationView{
			List{
				ForEach(fruits.shuffled()) { item in
					NavigationLink(destination: FruitDetailedView(fruit: item)) {
						FruitRowView(fruit: item)
							.padding(.vertical, 4)
					}
				}
			} // LIST
			.navigationTitle("Fruits")
			.navigationBarItems(trailing: Button(action: {
				isShowingSettings = true
			}, label: {
				Image(systemName: "slider.horizontal.3")
			})) // SETTINGS BUTTON
			.sheet(isPresented: $isShowingSettings) {
				SettingsView()
			}
		} // NAVIGATION
		.navigationViewStyle(StackNavigationViewStyle())
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(fruits: fruitsData)
	}
}
