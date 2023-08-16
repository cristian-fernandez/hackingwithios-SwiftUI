//
//  ShowingAlert.swift
//  GuessTheFlag
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 2/3/23.
//

import SwiftUI

struct ShowingAlert: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert){
            Button("Delete", role: .destructive){}
            Button("Cancel", role: .cancel){}
        } message: {
            Text("Please read this!")
        }
    }
}

struct ShowingAlert_Previews: PreviewProvider {
    static var previews: some View {
        ShowingAlert()
    }
}
