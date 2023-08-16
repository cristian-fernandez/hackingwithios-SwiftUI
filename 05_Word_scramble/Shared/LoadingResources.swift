//
//  LoadingResources.swift
//  05_Word_scramble
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 20/4/23.
//

import SwiftUI

struct LoadingResources: View {
    var body: some View {
        Text("Hola")
    }
    func loadFile(){
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt"){
            if let fileContents = try? String(contentsOf: fileURL){
                // we loaded the file into a string
            }
        }
    }
}

struct LoadingResources_Previews: PreviewProvider {
    static var previews: some View {
        LoadingResources()
    }
}
