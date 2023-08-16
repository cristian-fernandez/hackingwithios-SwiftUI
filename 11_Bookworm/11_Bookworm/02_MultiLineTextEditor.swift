//
//  02_MultiLineTextEditor.swift
//  11_Bookworm
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 18/7/23.
//

import SwiftUI

struct _2_MultiLineTextEditor: View {
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

struct _2_MultiLineTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        _2_MultiLineTextEditor()
    }
}
