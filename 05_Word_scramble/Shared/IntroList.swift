//
//  IntroList.swift
//  05_Word_scramble
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 20/4/23.
//

import SwiftUI

struct IntroList: View {
    let people = ["Finn", "Leia", "Solo", "Chubbi", "Luke"]
    var body: some View {
        
        List {
            Text("Static Row")

            ForEach(people, id: \.self) {
                Text($0)
            }

            Text("Static Row")
        }
        
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }

            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }

            Section("Section 3") {
                Text("Static row 3")
                Text("Static row 4")
            }
        }
    }
}

struct IntroList_Previews: PreviewProvider {
    static var previews: some View {
        IntroList()
    }
}
