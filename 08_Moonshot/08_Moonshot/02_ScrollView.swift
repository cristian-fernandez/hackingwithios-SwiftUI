//
//  02_ScrollView.swift
//  08_Moonshot
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 8/6/23.
//

import SwiftUI

struct CustomText: View {
    let text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}
struct _2_ScrollView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct _2_ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        _2_ScrollView()
    }
}
