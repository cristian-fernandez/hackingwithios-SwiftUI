//
//  WorkingWithDates.swift
//  BetterRest
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 10/3/23.
//

import SwiftUI

struct WorkingWithDates: View {
    var body: some View {
        Text(Date.now, format: .dateTime.day().month().month())
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    func trivialExample(){
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

struct WorkingWithDates_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithDates()
    }
}
