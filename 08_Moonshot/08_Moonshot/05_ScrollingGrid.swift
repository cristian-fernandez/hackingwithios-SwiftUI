//
//  05_ScrollingGrid.swift
//  08_Moonshot
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 8/6/23.
//

import SwiftUI

struct _5_ScrollingGrid: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct _5_ScrollingGrid_Previews: PreviewProvider {
    static var previews: some View {
        _5_ScrollingGrid()
    }
}
