//
//  Order.swift
//  10_CupcakeCorner
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 7/7/23.
//

import Foundation

struct Order: Codable {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    var extraFrosting = false
    var addSprinkles = false
    var name = ""
    var streetAddress = ""
    var city = ""
    var zip = ""
    
    var hasValidAddress: Bool {
        
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        let trimmedStreetAddress = streetAddress.trimmingCharacters(in: .whitespaces)
        let trimmedName = name.trimmingCharacters(in: .whitespaces)
        let trimmedCity = city.trimmingCharacters(in: .whitespaces)
        let trimmedZip = zip.trimmingCharacters(in: .whitespaces)
        if trimmedName.isEmpty || trimmedStreetAddress.isEmpty || trimmedCity.isEmpty || trimmedZip.isEmpty {
            return false
        }
        return true
    }
    var cost: Double {
        // $2 per cake
        var cost = Double(quantity) * 2
        
        // complicated cakes cost more
        cost += (Double(type) / 2)
        
        // $1/cake for extra frosting
        if extraFrosting {
            cost += Double(quantity)
        }
        
        // $0.50/cake for sprinkles
        if addSprinkles {
            cost += Double(quantity) / 2
        }
        
        return cost
    }
    
    init(){ }
}

class OrderObservableModel : ObservableObject, Codable {
    @Published var OrderModel: Order = Order()
    
    enum CodingKeys: CodingKey {
        case type, quantity, extraFrosting, addSprinkles, name, streetAddress, city, zip
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        OrderModel.type = try container.decode(Int.self, forKey: .type)
        OrderModel.quantity = try container.decode(Int.self, forKey: .quantity)

        OrderModel.extraFrosting = try container.decode(Bool.self, forKey: .extraFrosting)
        OrderModel.addSprinkles = try container.decode(Bool.self, forKey: .addSprinkles)

        OrderModel.name = try container.decode(String.self, forKey: .name)
        OrderModel.streetAddress = try container.decode(String.self, forKey: .streetAddress)
        OrderModel.city = try container.decode(String.self, forKey: .city)
        OrderModel.zip = try container.decode(String.self, forKey: .zip)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(OrderModel.type, forKey: .type)
        try container.encode(OrderModel.quantity, forKey: .quantity)

        try container.encode(OrderModel.extraFrosting, forKey: .extraFrosting)
        try container.encode(OrderModel.addSprinkles, forKey: .addSprinkles)

        try container.encode(OrderModel.name, forKey: .name)
        try container.encode(OrderModel.streetAddress, forKey: .streetAddress)
        try container.encode(OrderModel.city, forKey: .city)
        try container.encode(OrderModel.zip, forKey: .zip)
    }
}
