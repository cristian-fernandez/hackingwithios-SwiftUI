//
//  AddingCodable01.swift
//  10_CupcakeCorner
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 6/7/23.
//

import SwiftUI

class User: ObservableObject, Codable {
    enum CodingKeys: CodingKey {
        case name
    }
    @Published var name = "Paul Hudson"
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
    
}

struct AddingCodable01: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddingCodable01_Previews: PreviewProvider {
    static var previews: some View {
        AddingCodable01()
    }
}
