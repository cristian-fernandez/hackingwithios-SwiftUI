//
//  ContentView.swift
//  Shared
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/2/23.
//

import SwiftUI

struct ColorAndFrames: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }

            Text("Your content")
                .foregroundColor(.secondary)
                    .foregroundColor(.secondary)
                    .padding(50)
                    .background(.ultraThinMaterial)
            }
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorAndFrames()
    }
}
