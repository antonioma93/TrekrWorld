//
//  ListingView.swift
//  Trekr
//
//  Created by Paul Hudson on 16/01/2021.
//

import SwiftUI

struct ListingView: View {
    @EnvironmentObject var dataController: DataController
    @State private var showingFavorites = false

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Choose your destination")) {
					ForEach (items, content: ListingRow.init)
						.padding(5)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Discover")
            .toolbar {
				favoritesButton
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListingView()
            .environmentObject(DataController())
    }
}

extension ListingView {
	 func toggleFavorites() {
		withAnimation {
			showingFavorites.toggle()
		}
	}

	var favoritesButton: some View {
		Button(action: toggleFavorites) {
			if showingFavorites {
				Text("Show all locations")
			} else {
				Text("Show only favorites")
			}
		}
	}

	var items: [Location] {
		if showingFavorites {
			return dataController.locations.filter(dataController.isFavorite)
		} else {
			return dataController.locations
		}
	}

}
