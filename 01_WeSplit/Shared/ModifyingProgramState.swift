//
//  ModifyingProgramState.swift
//  WeSplit
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 23/2/23.
//

import SwiftUI

struct ModifyingProgramState: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)"){
            tapCount += 1
        }
    }
}

struct ModifyingProgramState_Previews: PreviewProvider {
    static var previews: some View {
        ModifyingProgramState()
    }
}
