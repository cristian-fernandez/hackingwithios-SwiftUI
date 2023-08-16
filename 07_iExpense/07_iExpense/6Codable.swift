//
//  6Codable.swift
//  07_iExpense
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 25/5/23.
//

import SwiftUI

struct UserCodable: Codable {
    let firstName: String
    let lastName: String
}

struct _Codable: View {
    @State private var user = UserCodable(firstName: "Cristian", lastName: "Fernandez")
    
    var body: some View {
        Button("Save User"){
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(user){
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct _Codable_Previews: PreviewProvider {
    static var previews: some View {
        _Codable()
    }
}
