//
//  01_CreatingBinding.swift
//  11_Bookworm
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 18/7/23.
//

import SwiftUI

struct PushButton : View {
    let title : String
    @Binding var isOn : Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white:0.6), Color(white:0.4)]
    
    var body: some View{
        Button(title){
            isOn.toggle()
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors : isOn ? onColors : offColors), startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
    }
}

struct _1_CreatingBinding: View {
    @State private var rememberMe = false
    var body: some View {
        VStack {
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "ON" : "OFF")
        }
    }
}

struct _1_CreatingBinding_Previews: PreviewProvider {
    static var previews: some View {
        _1_CreatingBinding()
    }
}
