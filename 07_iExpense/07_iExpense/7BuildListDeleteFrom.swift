//
//  7BuildListDeleteFrom.swift
//  07_iExpense
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 25/5/23.
//

import SwiftUI

struct _BuildListDeleteFrom: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Business")){
                    ForEach(expenses.items.filter { $0.type == "Business"}) {
                        item in
                        
                        HStack {
                            VStack(alignment: .leading){
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            
                            Spacer()
                            
                            Text(item.amount, format: .currency(code: "USD"))
                                .foregroundColor(item.amount < 10 ? .green : item.amount < 100 ? .yellow : .orange)
                        }
                    }
                    .onDelete(perform: removeBussinesItem)
                }
                Section(header: Text("Personal")){
                    ForEach(expenses.items.filter { $0.type == "Personal"}) {
                        item in
                        
                        HStack {
                            VStack(alignment: .leading){
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            
                            Spacer()
                            
                            Text(item.amount, format: .currency(code: "USD"))
                                .foregroundColor(item.amount < 10 ? .green : item.amount < 100 ? .yellow : .orange)
                        }
                    }
                    .onDelete(perform: removePersonalItem)
                }
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense){
                _AddView(expenses: expenses)
            }
        }
    }
    
    func removeBussinesItem(at offsets: IndexSet){
        var id:String
        removeItems(at: offsets, from: expenses.items.filter { $0.type == "Business"})
    }
    func removePersonalItem(at offsets: IndexSet){
        removeItems(at: offsets, from: expenses.items.filter { $0.type == "Personal"})
    }
    
    func removeItems(at offsets: IndexSet, from filteredList:[ExpenseItem]) {
        
        if let index = offsets.first { // get the selected Index from Buss or Personal Array
            let itemToDelete = filteredList[index] // get the element from a given Array(Buss/Personal)
            if let indexToDelete = expenses.items.firstIndex(where: {$0.id == itemToDelete.id}) { // find the element in the items Array
                expenses.items.remove(at: indexToDelete)
            } else {
                // item could not be found
            }
        }
    }
}

struct _BuildListDeleteFrom_Previews: PreviewProvider {
    static var previews: some View {
        _BuildListDeleteFrom()
    }
}
