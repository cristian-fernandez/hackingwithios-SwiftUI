//
//  3ShowingAndHidingViews.swift
//  07_iExpense
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/5/23.
//

import SwiftUI

struct SecondView : View {
    @Environment(\.dismiss) var dismiss
    
    let name : String
    
    var body: some View{
        Button ("Name \(name)"){
            dismiss()
        }
    }
}

struct _ShowingAndHidingViews: View {
    @State private var showingSheet = false
    var body: some View {
        Button("Show Sheet"){
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet){
            SecondView(name: "Cristian")
        }
    }
}

struct _ShowingAndHidingViews_Previews: PreviewProvider {
    static var previews: some View {
        _ShowingAndHidingViews()
    }
}
