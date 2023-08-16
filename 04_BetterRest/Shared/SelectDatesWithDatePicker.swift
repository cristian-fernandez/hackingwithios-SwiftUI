//
//  SelectDatesWithDatePicker.swift
//  BetterRest
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 10/3/23.
//

import SwiftUI

struct SelectDatesWithDatePicker: View {
    @State private var wakeUp = Date.now
    var body: some View {
        DatePicker("Please enter a date: ", selection: $wakeUp, in : Date.now...)
    }
}

struct SelectDatesWithDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        SelectDatesWithDatePicker()
    }
}
