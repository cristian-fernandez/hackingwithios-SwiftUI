//
//  _1_BookwormApp.swift
//  11_Bookworm
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 17/7/23.
//

import SwiftUI

@main
struct _1_BookwormApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            _4_BookContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
