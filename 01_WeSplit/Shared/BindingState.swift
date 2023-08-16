//
//  BindingState.swift
//  WeSplit
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 23/2/23.
//

import SwiftUI

struct BindingState: View {
    @State private var name = ""
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
        Text("Your name is \(name)")
        }
    }
}

struct BindingState_Previews: PreviewProvider {
    static var previews: some View {
        BindingState()
    }
}
