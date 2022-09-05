//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Богдан Беннер on 2.09.22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
		GroupBox() {
			HStack {
				Text("Content source")
				Spacer()
				Link("Wikipedia", destination: URL(string: "https://wikipedia.org")!)
				Image(systemName: "arrow.up.right.square")
			} // HSTACK
			.font(.footnote)
		} // GROUPBOX
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
