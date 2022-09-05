//
//  SettingsHeaderView.swift
//  Fructus
//
//  Created by Богдан Беннер on 4.09.22.
//

import SwiftUI

struct SettingsLabelView: View {
	var labelText: String
	var labelImage: String
    var body: some View {
		HStack {
			Text(labelText.uppercased()).fontWeight(.bold)
			Spacer()
			Image(systemName: labelImage)
		}
    }
}

struct SettingsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
		SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
