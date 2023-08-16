//
//  ExpenseItem.swift
//  07_iExpense
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 25/5/23.
//

import Foundation

struct ExpenseItem : Identifiable , Codable{
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
