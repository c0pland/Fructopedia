//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Богдан Беннер on 4.09.22.
//

import SwiftUI

struct SettingsRowView: View {
	var name: String
	var content: String? = nil
	var linkLabel: String? = nil
	var linkDestination: String? = nil
	var body: some View {
		VStack {
			Divider().padding(.vertical, 4)
			HStack {
				Text(name).foregroundColor(Color.gray)
				Spacer()
				if let content = content {
					Text(content)
				} else if linkLabel != nil && linkDestination != nil {
					Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
					Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
				}
			}
		}
	}
}
	
	struct SettingsRowView_Previews: PreviewProvider {
		static var previews: some View {
			Group {
				SettingsRowView(name: "Developer", content: "Bogdan Benner")
					.previewLayout(.fixed(width: 375, height: 60))
				.padding()
				SettingsRowView(name: "Github", content: nil, linkLabel: "c0pland", linkDestination: "github.com/c0pland")
					.preferredColorScheme(.dark)
					.previewLayout(.fixed(width: 375, height: 60))
					.padding()
			}
		}
	}
