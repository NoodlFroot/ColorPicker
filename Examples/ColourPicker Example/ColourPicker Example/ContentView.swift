//
//  ContentView.swift
//  ColourPicker Example
//
//  Created by Richard Groves on 26/05/2020.
//

import SwiftUI

struct ContentView: View {
	
	@State private var chosenColor: UIColor = .black
	
    var body: some View {
		VStack {
			Text("Hello, World!").foregroundColor(Color(self.chosenColor))
			
			ColorPicker(color: self.$chosenColor, strokeWidth: 30.0, saturation: 0.7)
				.frame(maxWidth: 200.0)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
