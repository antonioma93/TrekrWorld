//
//  LocationHeader.swift
//  Trekr
//
//  Created by Massa Antonio on 22/07/21.
//

import SwiftUI

struct LocationHeader: View {
	@EnvironmentObject var dataController: DataController
	let location: Location
	
    var body: some View {
		Image(location.heroPicture)
			.resizable()
			.scaledToFit()

		if dataController.isFavorite(location) {
			Image(systemName: "heart.fill")
				.foregroundColor(.white)
				.padding()
				.background(Color.red)
				.clipShape(Circle())
				.overlay(
					Circle()
						.strokeBorder(Color.white, lineWidth: 2)
				)
				.offset(x: -10, y: -10)
		}
    }
}

struct LocationHeader_Previews: PreviewProvider {
    static var previews: some View {
		LocationHeader(location: Location.example)
    }
}
