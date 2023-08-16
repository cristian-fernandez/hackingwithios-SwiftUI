//
//  CreatingViewsInLoop.swift
//  WeSplit
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 23/2/23.
//

import SwiftUI

struct CreatingViewsInLoop: View {
    let students = ["Hermione", "Luna", "Ron"]
    @State private var selectedStudent = "Luna"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent){
                        ForEach(students, id:\.self){
                            Text(($0))
                        }
                }
            }
        }
    }
}

struct CreatingViewsInLoop_Previews: PreviewProvider {
    static var previews: some View {
        CreatingViewsInLoop()
    }
}
