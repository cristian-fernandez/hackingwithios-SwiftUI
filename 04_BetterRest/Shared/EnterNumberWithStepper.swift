//
//  EnterNumberWithStepper.swift
//  BetterRest
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 10/3/23.
//

import SwiftUI

struct EnterNumberWithStepper: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount,in: 4...12, step: 0.25)
    }
}

struct EnterNumberWithStepper_Previews: PreviewProvider {
    static var previews: some View {
        EnterNumberWithStepper()
    }
}
