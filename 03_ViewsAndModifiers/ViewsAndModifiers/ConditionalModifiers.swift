//
//  ConditionalModifiers.swift
//  ViewsAndModifiers
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 8/3/23.
//

import SwiftUI

struct ConditionalModifiers: View {
    @State private var useRedText = false
    var body: some View {
        Button("Hello World") {
            // flip the Boolean between true and false
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
        
        VStack {
            Text("Gryffindor")
                .blur(radius: 0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .blur(radius: 5)
    }
}

struct ConditionalModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalModifiers()
    }
}
