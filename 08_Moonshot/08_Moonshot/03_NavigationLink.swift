//
//  03_NavigationLink.swift
//  08_Moonshot
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 8/6/23.
//

import SwiftUI

struct _3_NavigationLink: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct _3_NavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        _3_NavigationLink()
    }
}
