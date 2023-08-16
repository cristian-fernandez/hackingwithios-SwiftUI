//
//  4DeletingItems.swift
//  07_iExpense
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/5/23.
//

import SwiftUI

struct _DeletingItems: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView{
            VStack{
                List {
                    ForEach(numbers, id: \.self){
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("onDelete()")
            .toolbar{
                EditButton()
            }
        }
    }
    
    func removeRows(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
}

struct _DeletingItems_Previews: PreviewProvider {
    static var previews: some View {
        _DeletingItems()
    }
}
