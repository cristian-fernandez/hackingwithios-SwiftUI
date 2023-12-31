//
//  ViewComposition.swift
//  ViewsAndModifiers
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 8/3/23.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    var body: some View{
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct ViewComposition: View {
    var body: some View {
        VStack(spacing:10){
            CapsuleText(text: "First")
                .foregroundColor(.white)
            CapsuleText(text: "Second")
                .foregroundColor(.yellow)
        }
    }
}

struct ViewComposition_Previews: PreviewProvider {
    static var previews: some View {
        ViewComposition()
    }
}
