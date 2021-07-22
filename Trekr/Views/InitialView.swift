//
//  InitialiView.swift
//  Trekr
//
//  Created by Massa Antonio on 22/07/21.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
		ZStack {
			Text("Welcome")
				.fontWeight(.bold)
				.foregroundColor(.white)
				.font(.custom("Satisfy-Regular", size: 46))
				.multilineTextAlignment(.leading)
				.padding(.bottom)
		}
		.background(
			Image("water")
				.scaledToFill()
				.ignoresSafeArea()
		)
    }
}

struct InitialiView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
