//
//  5UserDefaults.swift
//  07_iExpense
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 25/5/23.
//

import SwiftUI

struct _UserDefaults: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap count: \(tapCount)"){
            tapCount += 1
        }
    }
}

struct _UserDefaults_Previews: PreviewProvider {
    static var previews: some View {
        _UserDefaults()
    }
}
