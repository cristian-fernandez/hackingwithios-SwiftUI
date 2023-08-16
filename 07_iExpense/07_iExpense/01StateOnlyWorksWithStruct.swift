//
//  01StateOnlyWorksWithStruct.swift
//  07_iExpense
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/5/23.
//

import SwiftUI

struct User1 {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}
struct _1StateOnlyWorksWithStruct: View {
    @State private var user = User1()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

struct _1StateOnlyWorksWithStruct_Previews: PreviewProvider {
    static var previews: some View {
        _1StateOnlyWorksWithStruct()
    }
}
