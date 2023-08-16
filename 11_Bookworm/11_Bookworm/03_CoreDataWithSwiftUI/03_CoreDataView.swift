//
//  03_CoreDataView.swift
//  11_Bookworm
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 19/7/23.
//

import SwiftUI

struct _3_CoreDataView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown")
            }
            
            Button("Add"){
                let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]
                
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"
                
                try? moc.save()
            }
        }
    }
}

struct _3_CoreDataView_Previews: PreviewProvider {
    static var previews: some View {
        _3_CoreDataView()
    }
}
