//
//  2StatewithStateObject.swift
//  07_iExpense
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/5/23.
//

import SwiftUI

class User : ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct _StatewithStateObject: View {
    @StateObject private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

struct _StatewithStateObject_Previews: PreviewProvider {
    static var previews: some View {
        _StatewithStateObject()
    }
}
