//
//  ListingRow.swift
//  Trekr
//
//  Created by Massa Antonio on 22/07/21.
//

import SwiftUI

struct ListingRow: View {
	let location: Location

	var body: some View {
		NavigationLink(destination: LocationView(location: location)) {
			imageStyle()
			VStack(alignment: .leading) {
				Text(location.name)
					.font(.headline)

				Text(location.country)
					.foregroundColor(.secondary)
			}
		}

    }
}

struct ListingRow_Previews: PreviewProvider {
    static var previews: some View {
		ListingRow(location: Location.example)
    }
}

extension ListingRow {
	func imageStyle() -> some View {
	   return Image(location.country)
		   .resizable()
		   .frame(width: 80, height: 50)
		   .cornerRadius(40)
		.overlay(RoundedRectangle(cornerRadius: 5).strokeBorder(Color.black.opacity(0.3), lineWidth: 1))
   }
}
