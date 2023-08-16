//
//  ValidateAndDisableForms04.swift
//  10_CupcakeCorner
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 7/7/23.
//

import SwiftUI

struct ValidateAndDisableForms04: View {
    @State private var username = ""
    @State private var email = ""

    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create account") {
                    print("Creating account…")
                }
            }
            .disabled(disableForm)
        }
    }
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
}

struct ValidateAndDisableForms04_Previews: PreviewProvider {
    static var previews: some View {
        ValidateAndDisableForms04()
    }
}
