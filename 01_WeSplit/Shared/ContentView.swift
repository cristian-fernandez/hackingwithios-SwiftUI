//
//  ContentView.swift
//  Shared
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 17/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form {
                Section{
                    Text("Hello, world!")
                    
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
