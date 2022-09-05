//
//  SettingsView.swift
//  Fructus
//
//  Created by Богдан Беннер on 4.09.22.
//

import SwiftUI

struct SettingsView: View {
	@Environment(\.presentationMode) var presentationMode
	@AppStorage("isOnboarding") var isOnboarding: Bool = false
	var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(spacing: 20) {
					// SECTION1
					GroupBox(
						label:
							SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
					) {
						Divider().padding(.vertical, 4)
						HStack(alignment: .center, spacing: 10) {
							Image("logo")
								.resizable()
								.scaledToFit()
								.frame(width: 80, height: 80)
								.cornerRadius(9)
							Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potessium, fiber, vitamins and much more.")
								.font(Font.footnote)
						} // HSTACK
					}
					
					// Section2
					GroupBox(
						label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
							Divider().padding(.vertical, 4)
							Text("You can restart the application here. That way it starts the onboarding process and you will see the welcome screen again.")
								.font(Font.footnote)
								.padding(.vertical, 8)
								.frame(minHeight: 60)
								.layoutPriority(1)
								.multilineTextAlignment(.leading)
							
							Toggle(isOn: $isOnboarding) {
								if isOnboarding {
									Text("restarted".uppercased())
										.fontWeight(.bold)
										.foregroundColor(Color.green)
								} else {
									Text("restart".uppercased())
										.fontWeight(.bold)
										.foregroundColor(Color.secondary)
								}
							}
							.padding()
							.background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
						}
					
					//Section3
					GroupBox(
						label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
							SettingsRowView(name: "Developer", content: "Bogdan Benner")
							SettingsRowView(name: "Github", linkLabel: "c0pland", linkDestination: "github.com/c0pland")
							SettingsRowView(name: "LinkedIn", linkLabel: "Bogdan Benner", linkDestination: "linkedin.com/in/bennerbr")
						}
				} // VSTACK
				.navigationBarTitle("Settings", displayMode: .large)
				.padding()
				.navigationBarItems(trailing: Button(action: {
					presentationMode.wrappedValue.dismiss()
				}, label: {
					Image(systemName: "xmark")
				}))
			} // SCROLL
		} // NAV.VIEW
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
			.preferredColorScheme(.dark)
	}
}
